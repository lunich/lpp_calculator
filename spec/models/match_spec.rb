require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Match do
  fixtures :players, :events
  before(:each) do
    @player1 = players(:one)
    @player2 = players(:two)
    @valid_attributes = {
      :player_id => @player1.id,
      :opponent_id => @player2.id,
      :result1 => 9,
      :result2 => 8,
      :time => Time.now,
      :qualify => 0,
    }
  end

  describe "create" do
    [
      :opponent_id,
      :result1,
      :result2,
    ].each do |attr|
      it "should require #{attr}" do
        @event = Match.create(@valid_attributes.merge(attr => nil))
        @event.errors.on(attr).should_not be_nil
      end
    end
  end

  describe "create" do
    before(:each) do
      @count = @player1.matches.count
      @last_event = @player1.events.last
      @last_event.should_not be_nil
      @event = Match.create(@valid_attributes)
    end
    it "should create a new instance given valid attributes" do
      check_created_event(@event)
    end
    it "should assign players" do
      @event.player.should == @player1
      @event.opponent.should == @player2
    end
    it "should increase plyers' matches size" do
      @player1.matches.count.should == @count + 1
    end
    it "should assign prev and next events" do
      @event.prev.should == @last_event
      @last_event.reload
      @last_event.next.should == @event
    end
  end

  describe "raking" do
    before(:each) do
      @event = events(:one)
    end
    it "should return players' results" do
      @event.raking(@event.player).should == @event.raking1
    end
    it "should return 0 for invalid player" do
      @event.raking(nil).should == 0
    end
  end

private
  def check_created_event(e)
    e.valid?.should == true
    e.errors.size.should == 0
    e.new_record?.should == false
  end
end
