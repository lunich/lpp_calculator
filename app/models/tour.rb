class Tour < Event
  belongs_to :tournament

  validates_presence_of :tournament_place

end
