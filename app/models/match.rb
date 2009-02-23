class Match < Event
  belongs_to :game, :foreign_key => "parent_id"
end
