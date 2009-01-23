class Tournament < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :start
  validates_presence_of :end
  validates_presence_of :total_raking
  validates_presence_of :coeff
  validates_presence_of :raking

  validates_numericality_of :total_raking, :coeff, :raking

  validates_associated :tours

  has_many :tours, :order => "tournament_place"
  has_many :players, :through => :tours

  before_validation_on_create :set_time
  before_validation_on_create :calculate_raking

  def new_tour_data=(data)
    data.each do |attr|
      self.tours << Tour.new(attr)
    end
  end

  def players_raking
    players.inject(0) { |sum, p| sum + p.calculated_raking(self.start) }
  end

protected
  def set_time
    self.tours.each do |t|
      t.time = self.end
    end
  end

  def calculate_raking
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
