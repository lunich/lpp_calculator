class Event < ActiveRecord::Base
  belongs_to :player

  validates_presence_of :player_id
  validates_presence_of :time
  validates_presence_of :raking
  validates_numericality_of :raking

  def to_sign
    raking > 0 ?
      "positive" :
      raking < 0 ?
        "negative" :
        "zero"
  end
end
