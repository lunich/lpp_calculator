require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/game_spec')

describe TournamentGame do
  # Nope, should not :)
  #it_should_behave_like "Game"
  fixtures :players

  before(:each) do
    @player1 = players(:one)
    @player2 = players(:two)
    @valid_attributes = {
      :result1 => 5,
      :result2 => 4,
      :player1_id => @player1.id,
      :player2_id => @player2.id,
      :time => Time.now
    }
  end

  describe "create" do
    it "should create a new instance given valid attributes" do
      lambda do
        tgame = TournamentGame.create(@valid_attributes)
        tgame.valid?.should == true
      end.should change(TournamentGame, :count).by(1)
    end
  end
end
