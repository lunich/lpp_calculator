require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Event, :shared => true do
  fixtures :players, :events
  before(:each) do
    @player1 = players(:one)
    @valid_attributes = {
      :player_id => @player1.id,
      :time => Time.now,
      :raking => 12,
    }
  end

  describe "create" do
    [:player_id, :time, :raking].each do |attr|
      it "should require #{attr}" do
        @event = Event.create(@valid_attributes.merge(attr => nil))
        @event.errors.on(attr).should_not be_nil
      end
    end
    it "should require numeric raking" do
      @event = Event.create(@valid_attributes.merge(:raking => "A"))
      @event.errors.on(:raking).should_not be_nil
    end
  end

  describe "create" do
    before(:each) do
      @event = Event.create(@valid_attributes)
    end
    it "should create a new instance given valid attributes" do
      check_created_event(@event)
    end
    it "should assign player" do
      @event.player.should == @player1
    end
  end

private
  def check_created_event(e)
    e.valid?.should == true
    e.errors.size.should == 0
    e.new_record?.should == false
  end
end
