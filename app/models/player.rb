class Player < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :within => 2..20
  validates_uniqueness_of :name

  validates_inclusion_of :active, :in => [true, false]

  validates_presence_of :raking
  validates_numericality_of :raking, :greater_than_or_equal_to => 0,
    :less_than => 10000

  before_create :reset_raking

  has_many :events, :order => "time"
  has_many :non_qualify_events, :class_name => "Event", :conditions => "qualify!=1", :order => "time"
  has_many :matches, :order => "time", :conditions => "qualify!=1"
  has_many :tours, :order => "time"
  has_many :qualifies, :class_name => "Match", :conditions => "qualify=1", :order => "time"

  def self.all_active
    all(:conditions => ["active!=?", false], :order => "raking DESC")
  end

  def calculated_place
    all_players = Player.all_active
    n = all_players.index(self)
    prev_equal_player(all_players, n) if n
  end

  def reset_raking
    self.raking = 0
  end

  def calculated_raking(from = Time.now)
    e = self.non_qualify_events.find(:all, :conditions => ["time<=?",  from])
    e.inject(0) { |sum, e| sum + e.raking } + qualification_points(from)
  end

  def self.top(from, c)
    players = find(:all)
    players.sort { |p1, p2| p1.calculated_raking(from) <=> p2.calculated_raking(from) }[0,c]
  end

  def qualification_points(from = Time.now)
    if self.qualifies.count(:conditions => ["time<=?", from]) < 4
      0
    else
      q = self.qualifies.find(:all, :conditions => ["time<=?", from], :order => "raking")
      total = q[0,3].inject(0) do |sum, q|
        sum + q.raking
      end
      total / 3
    end
  end

protected
  def prev_equal_player(players, n)
    if n == 0
      1
    elsif (p = players[n-1]).raking == self.raking
      p.prev_equal_player(players, n - 1)
    else
      n + 1
    end
  end

end
