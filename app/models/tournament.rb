class Tournament < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :start
  validates_presence_of :end
  validates_presence_of :total_raking
  validates_presence_of :coeff
  validates_presence_of :raking
  validates_presence_of :new_tournament_participation_data, :on => :create

  validates_numericality_of :total_raking, :coeff, :raking

  validates_associated :tournament_participations

  validates_size_of :tournament_participations, :minimum => 2

  has_many :tournament_participations, :order => "place"
  has_many :players, :through => :tournament_participations

  before_validation :calculate_raking
  before_validation :set_time
  before_validation :set_tour_rakings

  after_update :save_tournament_participations

  attr_reader :import_errors

  def import(file)
    @import_errors = []
    begin
      TournamentParticipation.transaction do
        file.readlines.each do |line|
          place_str, player_name, points_str = line.strip.split(";")
          player = Player.find_by_name(player_name)
          unless player.nil?
            unless TournamentParticipation.create({
              :tournament_id => self.id,
              :player_id => player.id,
              :time => self.end,
              :place => place_str.to_i,
              :raking => points_str.to_f,
            })
              raise Exception.new("Can't create tournament participation for player #{player_name}")
            end
          else
            raise Exception.new("Player #{player_name} not found")
          end
        end
      end
      true
    rescue Exception => e
      @import_errors << e.message
      false
    end
  end

  def self.total_raking(from = Time.now)
    Tournament.sum("raking", :conditions => ["end<=?", from])
  end

  def new_tournament_participation_data
    @new_tournament_participation_data
  end

  def new_tournament_participation_data=(data)
    @new_tournament_participation_data = data
    unless @new_tournament_participation_data.nil?
      @new_tournament_participation_data.each do |attr|
        self.tournament_participations.build(attr)
      end
    end
  end

  def existing_tournament_participation_data=(data)
    @existing_tournament_participation_data = data
    unless @existing_tournament_participation_data.nil?
      tournament_participations.reject(&:new_record?).each do |tour|
        attributes = @existing_tournament_participation_data[tour.id.to_s]
        if attributes
          tour.attributes = attributes
        else
          tournament_participations.delete(tour)
        end
      end
    end
  end

  def players_raking
    players.inject(0) { |sum, p| sum + p.calculated_raking(self.start) }
  end

protected
  def set_time
    self.tournament_participations.each do |t|
      t.time = self.end
    end
  end

  def calculate_raking
    unless total_raking.blank?
      top = Player.top(self.start, self.tournament_participations.size)
      total_top = top.inject(0) { |sum, p| sum + p.calculated_raking(self.start) }
      if total_top == 0
        self.coeff = 1
        self.raking = self.total_raking
      else
        self.coeff = self.players_raking / total_top
        self.raking = self.total_raking * self.coeff
      end
    end
  end

  def set_tour_rakings
    unless total_raking.blank?
      groups = {}
      self.tournament_participations.each do |t|
        groups.has_key?(t.place) ?
          groups[t.place] << t :
          groups[t.place] = [t]
      end
      total = groups.keys.inject(0) { |sum, k| sum + groups[k].size * Coeff::INPUT_COEFF[k] }
      x = total_raking / total
      self.tournament_participations.each do |t|
        t.raking = x * Coeff::INPUT_COEFF[t.place]
      end
    end
  end

  def save_tournament_participations
    tournament_participations.each do |tour|
      tour.save(false)
    end
  end
end
