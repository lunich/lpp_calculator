require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/game_spec')

describe QualifyGame do
  # Nope, should not :)
  #it_should_behave_like "Game"
  fixtures :players

  before(:each) do
    @player1 = players(:one)
    @player2 = players(:two)
    @valid_attributes = {
      :result1 => 5,
      :result2 => 4,
      :raking1 => 12,
      :raking2 => 0,
      :player1_id => @player1.id,
      :player2_id => @player2.id,
      :time => Time.now
    }
  end

  describe "create" do
    it "should create a new instance given valid attributes" do
      lambda do
        qgame = QualifyGame.create(@valid_attributes)
        qgame.valid?.should == true
      end.should change(QualifyGame, :count).by(1)
    end
    it "should create QualifyMatch" do
      lambda do
        qgame = QualifyGame.create(@valid_attributes)
      end.should change(QualifyMatch, :count).by(1)
    end
    it "should create QualifierMatch" do
      lambda do
        qgame = QualifyGame.create(@valid_attributes)
      end.should change(QualifierMatch, :count).by(1)
    end
  end
end
