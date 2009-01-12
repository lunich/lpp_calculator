require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Match do
  fixtures :players, :events
  before(:each) do
    @player1 = players(:one)
    @player2 = players(:two)
    @valid_attributes = {
      :player1_id => @player1.id,
      :player2_id => @player2.id,
      :result1 => 9,
      :result2 => 8,
      :time => Time.now,
      :qualify => 0,
    }
  end

  describe "create" do
    [
      :player2_id,
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
      @count1 = @player1.events.size
      @count2 = @player2.events.size
      @last_p1_event = @player1.events.last
      @last_p2_event = @player2.events.last
      @last_p1_event.should_not be_nil
      @last_p2_event.should_not be_nil
      @event = Match.create(@valid_attributes)
    end
    it "should create a new instance given valid attributes" do
      check_created_event(@event)
    end
    it "should assign players" do
      @event.player1.should == @player1
      @event.player2.should == @player2
    end
    it "should increase plyers' events size" do
      @player1.events.size.should == @count1 + 1
      @player2.events.size.should == @count2 + 1
    end
    it "should assign prev events" do
      @event.prev_event1.should == @last_p1_event
      @event.prev_event2.should == @last_p2_event
    end
  end

private
  def check_created_event(e)
    e.valid?.should == true
    e.errors.size.should == 0
    e.new_record?.should == false
  end
end
