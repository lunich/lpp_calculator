class Tournament < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :start
  validates_presence_of :end
  validates_presence_of :total_raking
  validates_presence_of :coeff
  validates_presence_of :raking
  validates_presence_of :new_tour_data, :on => :create

  validates_numericality_of :total_raking, :coeff, :raking

  validates_associated :tours

  validates_size_of :tours, :minimum => 2

  has_many :tours, :order => "tournament_place"
  has_many :players, :through => :tours

  before_validation :calculate_raking
  before_validation :set_time
  before_save :set_tour_rakings

  after_update :save_tours

  def new_tour_data
    @new_tour_data
  end

  def new_tour_data=(data)
    @new_tour_data = data
    unless @new_tour_data.nil?
      @new_tour_data.each do |attr|
        self.tours << Tour.new(attr)
      end
    end
  end

  def existing_tour_data=(data)
    @existing_tour_data = data
    unless @existing_tour_data.nil?
      tours.reject(&:new_record?).each do |tour|
        attributes = @existing_tour_data[tour.id.to_s]
        if attributes
          tour.attributes = attributes
        else
          tours.delete(tour)
        end
      end
    end
  end

  def players_raking
    players.inject(0) { |sum, p| sum + p.calculated_raking(self.start) }
  end

protected
  def set_time
    self.tours.each do |t|
      t.qualify = false
      t.time = self.end
    end
  end

  def calculate_raking
    unless total_raking.blank?
      top = Player.top(self.start, self.tours.size)
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
    groups = {}
    self.tours.each do |t|
      groups.has_key?(t.tournament_place) ?
        groups[t.tournament_place] << t :
        groups[t.tournament_place] = [t]
    end
    total = groups.keys.inject(0) { |sum, k| sum + groups[k].size * Coeff::INPUT_COEFF[k] }
    x = total_raking / total
    self.tours.each do |t|
      t.raking = x * Coeff::INPUT_COEFF[t.tournament_place]
    end
  end

  def save_tours
    tours.each do |tour|
      tour.save(false)
    end
  end
end
