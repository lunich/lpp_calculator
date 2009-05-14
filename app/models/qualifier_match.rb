class QualifierMatch < Match
  belongs_to :qualify_game, :foreign_key => "parent_id"

  before_validation_on_create :set_raking

protected
  def set_raking
    self.raking = 0
  end
end
