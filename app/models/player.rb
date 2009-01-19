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
  has_many :matches
  has_many :tours
  has_many :qualifies, :class_name => "Match", :conditions => "qualify=1"

  def self.recalculate_rakings
    Player.transaction do
      all_active.each do |player|
        res = 0
        if player.qualifies.size == 4
          sum = []
          player.qualifies.each do |q|
            sum << q.raking(player)
          end
          sum.sort!
          0.upto(2) do |i|
            res += sum[i]
          end
          res /= 3
        end
        (player.matches + player.tours).each do |m|
          res += m.raking(player)
        end
        player.update_attributes(:raking => res)
      end
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
