class Tournament < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :start
end
