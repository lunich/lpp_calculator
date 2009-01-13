class Tournament < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :start

  has_many :tours, :order => "tournament_place"
  has_many :players, :through => :tours
end
