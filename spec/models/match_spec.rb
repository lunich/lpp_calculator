require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/event_spec')

describe Match do
  it_should_behave_like "Event"

  fixtures :players, :events
  before(:each) do
    @player1 = players(:one)
    @valid_attributes = {
      :player_id => @player1.id,
      :time => Time.now
    }
  end

  describe "create" do
    before(:each) do
      @count = @player1.matches.count
      @event = Match.create(@valid_attributes)
    end
    it "should create a new instance given valid attributes" do
      check_created_event(@event)
    end
    it "should increase players' matches size" do
      @player1.matches.count.should == @count + 1
    end
  end

private
  def check_created_event(e)
    e.valid?.should == true
    e.errors.size.should == 0
    e.new_record?.should == false
  end
end
