class QualifyGame < Game
  before_validation_on_create :build_matches
  def build_matches
    self.match1 = Match.new(
      :player_id => self.player1_id,
      :time => self.time
    )
    self.match2 = Match.new(
      :player_id => self.player2_id,
      :time => self.time
    )
    true
  end
end
