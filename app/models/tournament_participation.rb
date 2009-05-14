class TournamentParticipation < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :player

  has_one :tour, :foreign_key => "parent_id", :dependent => :destroy

  validates_associated :tour

  validates_presence_of :tournament_id, :on => :update
  validates_presence_of :player_id
  validates_presence_of :place

  validates_uniqueness_of :player_id, :scope => :tournament_id
  validates_uniqueness_of :tournament_id, :scope => :player_id

  validates_numericality_of :place, :only_integer => true, :greater_than => 0

  attr_accessor :raking

  before_validation_on_create :build_tour

protected
  def build_tour
    self.tour = Tour.new(
      :player_id => self.player_id,
      :time => self.time,
      :raking => self.raking
    )
  end
end
