class Game < ActiveRecord::Base
  belongs_to :event1, :class_name => "Match", :dependent => :destroy
  belongs_to :event2, :class_name => "Match", :dependent => :destroy
  has_one :player1, :through => :event1,
    :class_name => "User", :foreign_key => :player_id
  has_one :player1, :through => :event2,
    :class_name => "User", :foreign_key => :player_id

  attr_accessor :player1_id
  attr_accessor :player2_id

  validates_presence_of :result1
  validates_presence_of :result2
  validates_presence_of :player1_id
  validates_presence_of :player2_id
  validates_presence_of :time

  validates_associated :event1, :event2

  before_validation_on_create :build_events

  def build_events
    self.event1 = Match.new(
      :player_id => self.player1_id,
      :opponent_id => self.player2_id,
      :result1 => self.result1,
      :result2 => self.result2,
      :time => self.time
    )
    self.event2 = Match.new(
      :player_id => self.player2_id,
      :opponent_id => self.player1_id,
      :result1 => self.result2,
      :result2 => self.result1,
      :time => self.time
    )
  end
end
