class Tour < Event
  belongs_to :tournament_participation, :foreign_key => "parent_id"
  has_one :tournament, :through => :tournament_participation
end
