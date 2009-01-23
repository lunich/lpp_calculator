class Event < ActiveRecord::Base
  belongs_to :player
  belongs_to :prev, :class_name => "Event"
  belongs_to :next, :class_name => "Event"

  validates_presence_of :player_id
  validates_presence_of :time
  validates_inclusion_of :qualify, :in => [true, false]

  after_create :assign_list_events
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
