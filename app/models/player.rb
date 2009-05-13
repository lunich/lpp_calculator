class Player < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :within => 2..20
  validates_length_of :full_name, :maximum => 100
  validates_uniqueness_of :name

  validates_inclusion_of :active, :in => [true, false]

  validates_presence_of :raking
  validates_numericality_of :raking, :greater_than_or_equal_to => 0,
    :less_than => 10000

  before_create :set_raking

  has_many :tournament_participations
  has_many :tournaments, :through => :tournament_participations, :order => "time"
  # All events
  has_many :events, :order => "time"
  # Events except qualify_matches
  has_many :raking_events, :class_name => "Event", :order => "time",
    :conditions => ["type!=?", "QualifyMatch"]
  # Matches
  has_many :matches, :order => "time"
  # Tournaments
  has_many :tours, :order => "time"
  # Qualification (it should be has_one but it's not usefull)
  has_many :qualifications, :order => "time"
  # Qualifies
  has_many :qualify_matches, :order => "time"

  def self.all_active(from = Time.now)
    find(:all, :select => "players.*, sum(events.raking) as rak",
      :joins => :events, :group => "players.id", :conditions => ["active=1 AND time<?", from], :order => "rak desc")
  end

  def is_active?(from = Time.now)
    (self.qualifications.count(:conditions => ["time<?", from]) > 0) ||
      (self.tournaments.count(:conditions => ["tournaments.qualify=1 AND time<?", from]) > 0)
  end

  def calculated_place(from = Time.now)
    active = Player.all_active(from)
    active.reject do |p|
      p.calculated_raking(from) < self.calculated_raking(from)
    end.size
  end

  def calculated_raking(from = Time.now)
    self.raking_events.sum("raking", :conditions => ["time<?",  from])
  end

  def self.top(from, c)
    players = all_active(from)
    players.sort do |p1, p2|
      p2.calculated_raking(from) <=> p1.calculated_raking(from)
    end[0, c]
  end

protected
  def set_raking
    self.raking = 0
  end

  def prev_equal_player(players, n, from)
    if n == 0
      1
    elsif (p = players[n-1]).calculated_raking(from) == self.calculated_raking(from)
      p.prev_equal_player(players, n - 1, from)
    else
      n + 1
    end
  end

end
