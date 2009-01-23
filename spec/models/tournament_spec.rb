require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Tournament do
  fixtures :players, :tournaments

  describe "create" do
    before(:each) do
      @valid_attributes = {
        :name => "New tournament",
        :start => Time.now - 10.days,
        :end => Time.now,
        :total_raking => 100,
        :new_tour_data => [
          { :player_id => players(:one).id, :tournament_place => 1 },
          { :player_id => players(:two).id, :tournament_place => 2 },
        ]
      }
    end
    it "should create a new instance given valid attributes" do
      lambda do
        t = Tournament.create(@valid_attributes)
        t.errors.size.should == 0
        t.valid?.should == true
        t.new_record?.should == false
      end.should change(Tournament, :count).by(1)
    end

    it "should create 2 tours" do
      lambda do
        t = Tournament.create(@valid_attributes)
        t.tours.count.should == 2
      end.should change(Tour, :count).by(2)
    end

    it "should set tours time" do
      t = Tournament.create(@valid_attributes)
      t.tours.each do |tr|
        tr.time.should == t.end
      end
    end

    it "should set tours qualify to false" do
      t = Tournament.create(@valid_attributes)
      t.tours.each do |tr|
        tr.qualify.should == false
      end
    end

    describe "should require" do
      [:name, :start, :end, :total_raking, :new_tour_data].each do |attr|
        it "#{attr}" do
          t = Tournament.create(@valid_attributes.merge(attr => nil))
          t.errors.on(attr).should_not be_nil
          t.valid?.should == false
        end
      end
      it "minimum 2 tours" do
        t = Tournament.create(@valid_attributes.merge(
          :new_tour_data => [
            { :player_id => players(:one).id, :tournament_place => 1 },
          ]))
        t.errors.on(:tours).should_not be_nil
      end
    end
  end

  describe "update" do
    before(:each) do
      @tournament = tournaments(:one)
      @valid_update_attrs = {
        :name => "New tournament name",
        :start => Time.now - 2.days,
        :end => Time.now - 1.days,
        :total_raking => 101,
      }
    end
    describe "should require" do
      [:name, :start, :end, :total_raking].each do |attr|
        it "#{attr}" do
          @tournament.update_attributes(@valid_update_attrs.merge(attr => nil))
          @tournament.errors.on(attr).should_not be_nil
          @tournament.valid?.should == false
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
