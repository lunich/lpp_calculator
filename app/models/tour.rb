class Tour < Event
  belongs_to :tournament, :class_name => "Event"

  validates_presence_of :tournament_id
  validates_presence_of :tournament_place
end
