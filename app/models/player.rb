class Player < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :within => 2..20
  validates_length_of :full_name, :maximum => 100
  validates_uniqueness_of :name

  validates_inclusion_of :active, :in => [true, false]

  validates_presence_of :raking
  validates_numericality_of :raking, :greater_than_or_equal_to => 0,
    :less_than => 10000

  before_create :reset_raking

  has_many :tournament_participations
  has_many :tournaments, :through => :tournament_participations, :order => "time"
  has_many :events, :order => "time"
  has_many :non_qualify_events, :class_name => "Event", :order => "time"
  has_many :matches, :order => "time"
  has_many :tours, :order => "time"
  has_many :qualifies, :class_name => "Match", :order => "time"

  def self.all_active(from = Time.now)
    players = find(:all)
    players.reject { |p| !p.is_active?(from) }.sort{ |p1, p2| p2.calculated_raking(from) <=> p1.calculated_raking(from) }
  end

  def is_active?(from = Time.now)
    (self.qualification_points(from) > 0) ||
      (self.tournaments.count(:conditions => ["tournaments.qualify=1 AND time<?", from]) > 0)
  end

  def calculated_place(from = Time.now)
    active = Player.all_active(from)
    active.reject do |p|
      p.calculated_raking(from) < self.calculated_raking(from)
    end.size + 1
    #prev_equal_player(active, n, from) if n
  end

  def reset_raking
    self.raking = 0
  end

  def calculated_raking(from = Time.now)
    e = self.non_qualify_events.find(:all, :conditions => ["time<?",  from])
    e.inject(0) { |sum, e| sum + e.raking } + qualification_points(from)
  end

  def self.top(from, c)
    players = all_active(from)
    players.sort do |p1, p2|
      p2.calculated_raking(from) <=> p1.calculated_raking(from)
    end[0, c]
  end

  def qualification_points(from = Time.now)
    if self.qualifies.count(:conditions => ["time<?", from]) < 4
      0
    else
      q = self.qualifies.find(:all, :conditions => ["time<?", from], :order => "raking")
      (q[0,3].inject(0) { |sum, q| sum + q.raking }) / 3
    end
  end

protected
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
