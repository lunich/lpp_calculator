class TournamentParticipation < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :player

  validates_presence_of :tournament_id, :on => :update
  validates_presence_of :player_id
  validates_presence_of :place
  validates_presence_of :raking

  validates_uniqueness_of :player_id, :scope => :tournament_id
  validates_uniqueness_of :tournament_id, :scope => :player_id

  validates_numericality_of :place, :only_integer => true, :greater_than => 0

  attr_accessor :raking
end
