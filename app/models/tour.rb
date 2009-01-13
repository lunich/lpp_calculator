class Tour < Event
  belongs_to :player, :foreign_key => "player1_id"
  belongs_to :tournament, :class_name => "Event"

  validates_presence_of :tournament_id
  validates_presence_of :tournament_place
end
