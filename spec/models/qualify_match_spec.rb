require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/event_spec')

describe QualifyMatch do
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
      @count = @player1.qualify_matches.count
      @event = QualifyMatch.create(@valid_attributes)
    end
    it "should create a new instance given valid attributes" do
      check_created_event(@event)
    end
    it "should increase players' q-matches size" do
      @player1.qualify_matches.count.should == @count + 1
    end
    describe "after 3 aulify matches" do
      before(:each) do
        3.times do
          QualifyMatch.create(@valid_attributes)
        end
      end
      it "should build qualification" do
        lambda do
          QualifyMatch.create(@valid_attributes)
        end.should change(Qualification, :count).by(1)
      end
    end
  end

private
  def check_created_event(e)
    e.valid?.should == true
    e.errors.size.should == 0
    e.new_record?.should == false
  end
end
