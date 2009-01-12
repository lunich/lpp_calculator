class Match < Event
  belongs_to :player1, :class_name => "Player"
  belongs_to :player2, :class_name => "Player"
  belongs_to :prev_event2, :class_name => "Event"

  validates_presence_of :player2_id
  validates_presence_of :result1
  validates_presence_of :result2

  before_create :assign_prev_events

protected
  def assign_prev_events
    player1 = Player.find(player1_id)
    self.prev_event1 = player1.events.last
    player2 = Player.find(player2_id)
    self.prev_event2 = player2.events.last
  end
end
