class QualifyGame < Game
  attr_accessor :qualifier

  has_one :match1, :class_name => "QualifyMatch", :foreign_key => "parent_id",
    :include => "game",
    :dependent => :destroy
  has_one :match2, :class_name => "QualifierMatch", :foreign_key => "parent_id",
    :include => "game",
    :dependent => :destroy

  has_one :player1, :class_name => "Player",
    :through => :match1,
    :source => :player
  has_one :player2, :class_name => "Player",
    :through => :match2,
    :source => :player

  def self.import(file)
    Game.import(file, QualifyGame)
  end

protected
  def build_matches
    if self.qualifier == 2
      self.match1 = QualifyMatch.new(
        :player_id => self.player1_id,
        :time => self.time,
        :raking => self.raking1
      )
      self.match2 = QualifierMatch.new(
        :player_id => self.player2_id,
        :time => self.time
      )
    else
      self.match1 = QualifyMatch.new(
        :player_id => self.player2_id,
        :time => self.time,
        :raking => self.raking2
      )
      self.match2 = QualifierMatch.new(
        :player_id => self.player1_id,
        :time => self.time
      )
    end
    true
  end
end
