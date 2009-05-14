class Event < ActiveRecord::Base
  belongs_to :player

  validates_presence_of :player_id
  validates_presence_of :time
  validates_presence_of :raking
  validates_numericality_of :raking
end
