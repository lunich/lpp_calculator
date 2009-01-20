class Event < ActiveRecord::Base
  belongs_to :player
  belongs_to :prev, :class_name => "Event"
  belongs_to :next, :class_name => "Event"

  validates_presence_of :player_id
  validates_presence_of :time

  after_create :assign_list_events

  def raking(p = nil)
    p == self.player ? raking1 : 0
  end

protected
  def assign_list_events
    Event.transaction do
      l = self.player.events.last(:conditions => ["id!=?", self.id])
      unless l.nil?
        self.prev = l
        l.update_attributes(:next_id => self.id)
      end
    end
  end
end
