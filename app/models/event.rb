class Event < ActiveRecord::Base
  belongs_to :prev_event1, :class_name => "Event"

  validates_presence_of :player1_id
  validates_presence_of :time

  before_create :assign_prev_event

  def raking(player)
    player1 == player ? raking1 : 0
  end

protected
  def assign_prev_event
    player = Player.find(player1_id)
    self.prev_event1 = player.events.last
  end
end
