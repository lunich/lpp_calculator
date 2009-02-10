require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Game do
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
        game = Game.create(@valid_attributes)
        game.valid?.should == true
      end.should change(Game, :count).by(1)
    end
    it "should create 2 events" do
      lambda do
        game = Game.create(@valid_attributes)
      end.should change(Event, :count).by(2)
    end
    describe "should require" do
      [:result1, :result2, :player1_id, :player2_id, :time].each do |attr|
        it "#{attr}" do
          lambda do
            game = Game.create(@valid_attributes.merge(attr => nil))
            game.errors.on(attr).should_not be_nil
          end.should_not change(Game, :count)
        end
      end
    end
  end

end
