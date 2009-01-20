class Match < Event
  validates_presence_of :opponent_id
  validates_presence_of :result1
  validates_presence_of :result2

  belongs_to :opponent, :class_name => "Player"
end
