require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Player do
  before(:each) do
    @valid_attributes = {
      :name => "New Player",
      :full_name => "John Sapkovsky",
      :active => true,
      :raking => 9.99
    }
  end

  it "should create a new instance given valid attributes" do
    lambda do
      p = Player.create(@valid_attributes)
      check_created_player(p)
    end.should change(Player, :count).by(1)
  end

  describe "field" do
    [
      [:name, ["A" * 20], [nil, "", "A" * 21, "1"]],
      [:full_name, ["A" * 100], ["A" * 101]],
      [:active, [true, false], [nil, ""]],
      [:raking, ["123", 12, 9999], [nil, "", -1, 10000]],
    ].each do |attr, valids, invalids|
      valids.each do |value|
        it "'#{attr}' could be '#{value.to_s}'" do
          p = Player.create(@valid_attributes.merge(attr => value))
          p.errors.on(attr).should be_nil
          check_created_player(p)
        end
      end
      invalids.each do |value|
        it "'#{attr}' can't be '#{value.to_s}'" do
          lambda do
            p = Player.create(@valid_attributes.merge(attr => value))
            p.errors.on(attr).should_not be_nil
          end.should_not change(Player, :count)
        end
      end
    end
  end

  describe "should require unique" do
    fixtures :players
    before do
      @existing_player = players(:one)
    end
    it "name" do
      lambda do
        p = Player.create(@valid_attributes.merge(:name => @existing_player.name))
        p.errors.on(:name).should_not be_nil
      end.should_not change(Player, :count)
    end
  end

  describe "all_active class method" do
    fixtures :players
    it "should success current active" do
      @players = Player.find(:all)
      active = Player.all_active
      @players.each do |p|
        if p.is_active?
          active.include?(p).should == true
        else
          active.include?(p).should == false
        end
      end
    end
  end

  describe "qualification_points" do
    fixtures :players, :events
    it "should return current qualification" do
      player = players(:raker)
      raking = player.qualifies.find(:all, :order => "raking")[0,3].inject(0) do |sum, q|
        sum + q.raking
      end
      raking /= 3
      player.qualification_points.should == raking
    end
    it "should return 0 qualification not finished" do
      player = players(:raker)
      player.qualification_points(Time.now-10.days).should == 0
    end
    it "should return 0 if was not qualified" do
      player = players(:two)
      player.qualification_points.should == 0
    end
  end

  describe "non_qualify_events" do
    fixtures :players, :events
    it "should return all matches and tours" do
      player = players(:raker)
      nq = player.non_qualify_events
      (player.tours + player.matches).each do |e|
        nq.include?(e).should == true
      end
    end
  end

  describe "calculated_raking" do
    fixtures :players, :events
    it "should calculate current raking" do
      player = players(:raker)
      raking = player.qualification_points
      raking += player.non_qualify_events.inject(0) { |sum, m| sum + m.raking }
      player.calculated_raking.should == raking
    end
    it "should calculate history raking" do
      player = players(:raker)
      raking = player.qualification_points
      raking += player.matches.inject(0) { |sum, m| sum + m.raking }
      player.calculated_raking(Time.now - 2.5.days).should == raking
    end
  end

  describe "is_active?" do
    fixtures :players, :events, :tournaments
    it "should return true for current quialified player" do
      player = players(:raker)
      player.is_active?.should == true
    end
    it "should return false when not quialified player" do
      player = players(:raker)
      player.is_active?(Time.now - 5.days).should == false
    end
    it "should return true for current player from q-tournament" do
      player = players(:one)
      player.is_active?.should == true
    end
    it "should return false for history player from q-tournament" do
      player = players(:one)
      player.is_active?(Time.now - 11.days).should == false
    end
  end

private
  def check_created_player(p)
    p.valid?.should == true
    p.errors.size.should == 0
    p.new_record?.should == false
    p.raking.should == 0
  end
end
