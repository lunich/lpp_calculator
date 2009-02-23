class Event < ActiveRecord::Base
  belongs_to :player

  validates_presence_of :player_id
  validates_presence_of :time
end
