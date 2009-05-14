class QualifyGame < Game
  before_validation_on_create :build_matches

  def self.import(file)
    Game.import(file, QualifyGame)
  end

protected
  def build_matches
    self.match1 = QualifyMatch.new(
      :player_id => self.player1_id,
      :time => self.time,
      :raking => self.raking1
    )
    self.match2 = QualifyMatch.new(
      :player_id => self.player2_id,
      :time => self.time,
      :raking => self.raking1
    )
    true
  end
end
