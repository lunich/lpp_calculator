class Game < ActiveRecord::Base
  belongs_to :player1, :class_name => "Player"
  belongs_to :player2, :class_name => "Player"

  has_one :match1, :class_name => "Match", :foreign_key => "parent_id",
    :conditions => ["events.player_id=games.player1_id"],
    :dependent => :destroy
  has_one :match2, :class_name => "Match", :foreign_key => "parent_id",
    :conditions => ["events.player_id=games.player1_id"],
    :dependent => :destroy

  validates_presence_of :result1
  validates_presence_of :result2
  validates_presence_of :player1_id
  validates_presence_of :player2_id
  validates_presence_of :time

  validates_associated :match1, :match2

  before_validation_on_create :build_matches

  def build_matches
    self.match1 = Match.new(
      :player_id => self.player1_id,
      :time => self.time
    )
    self.match2 = Match.new(
      :player_id => self.player2_id,
      :time => self.time
    )
    true
  end
end
