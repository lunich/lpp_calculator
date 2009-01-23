require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Tournament do
  fixtures :players
  before(:each) do
    @valid_attributes = {
      :name => "New tournament",
      :start => Time.now - 10.days,
      :end => Time.now,
      :total_raking => 100,
    }
  end

  describe "create" do
    it "should create a new instance given valid attributes" do
      lambda do
        t = Tournament.create(@valid_attributes)
        t.errors.size.should == 0
        t.valid?.should == true
        t.new_record?.should == false
      end.should change(Tournament, :count).by(1)
    end

    describe "should require" do
      [:name, :start, :end, :total_raking].each do |attr|
        it "#{attr}" do
          t = Tournament.create(@valid_attributes.merge(attr => nil))
          t.errors.on(attr).should_not be_nil
          t.valid?.should == false
        end
      end
    end
  end

  describe "should has many" do
    fixtures :tournaments
    before(:each) do
      @tournament = tournaments(:one)
    end
    it "tours" do
      @tournament.tours.should_not be_nil
    end
    it "players" do
      @tournament.players.should_not be_nil
    end
  end
end
