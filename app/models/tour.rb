class Tour < Event
  belongs_to :tournament, :foreign_key => "parent_id"
end
