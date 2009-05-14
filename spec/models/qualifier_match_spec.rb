require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/event_spec')

describe QualifierMatch do
  it_should_behave_like "Event"

  fixtures :players, :events
  before(:each) do
    @player1 = players(:two)
    @valid_attributes = {
      :player_id => @player1.id,
      :time => Time.now,
      :raking => 12
    }
  end

  describe "create" do
    before(:each) do
      @count = @player1.qualifier_matches.count
      @event = QualifierMatch.create(@valid_attributes)
    end
    it "should create a new instance given valid attributes" do
      check_created_match(@event)
    end
    it "should increase players' q-matches size" do
      @player1.qualifier_matches.count.should == @count + 1
    end
  end

private
  def check_created_match(e)
    e.valid?.should == true
    e.errors.size.should == 0
    e.new_record?.should == false
    e.raking.should == 0
  end
end
