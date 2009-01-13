class Player < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :within => 3..20
  validates_uniqueness_of :name

  validates_inclusion_of :active, :in => [true, false]

  validates_presence_of :raking
  validates_numericality_of :raking, :greater_than_or_equal_to => 0,
    :less_than => 10000

  before_create :reset_raking

  def events(options = {})
    options = options.merge(
      :conditions => ["player1_id=? OR player2_id=?", self.id, self.id])
    Event.find(:all, options)
  end

  def qualifies
    Event.find(:all,
      :conditions => ["type=? AND ((qualify=1 AND player1_id=?) OR (qualify=2 AND player2_id=?))",
        "Match", self.id, self.id])
  end

  def matches
    Event.find(:all,
      :conditions => ["type=? AND qualify=0 AND (player1_id=? OR player2_id=?)",
        "Match", self.id, self.id])
  end

  def self.recalculate_rakings
    all_active.each do |player|
      res = 0
      player.matches.each do |m|
        res += m.raking(player)
      end
      player.update_attributes(:raking => res)
    end
  end

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
