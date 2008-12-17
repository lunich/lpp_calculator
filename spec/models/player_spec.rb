require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Player do
  before(:each) do
    @valid_attributes = {
      :name => "New Player",
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
      [:name, ["A" * 20], [nil, "", "A" * 21, "12"]],
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
    it "should success" do
      @players = Player.find(:all,
        :conditions => ["active!=?", false],
        :order => "raking DESC")
      Player.all_active.should == @players
    end
  end

  describe "calculated_place method" do
    fixtures :players
    before do
      @players = Player.all_active
      @first = @players.first
      @last = @players.last
      @new_player = Player.create(@valid_attributes)
    end
    it "should be 1" do
      @new_player.update_attributes(:raking => @first.raking + 1)
      @new_player.calculated_place.should == 1
    end
    it "should be last" do
      @new_player.update_attributes(:raking => @last.raking - 1)
      @new_player.calculated_place.should == @players.size + 1
    end
    it "should be equal to first" do
      @new_player.update_attributes(:raking => @first.raking)
      @new_player.calculated_place.should == @first.calculated_place
    end
    it "should be equal to last" do
      @new_player.update_attributes(:raking => @last.raking)
      @new_player.calculated_place.should == @last.calculated_place
    end
    it "should be average" do
      @new_player.update_attributes(:raking => (@first.raking + @last.raking) / 2)
      @new_player.calculated_place.should > @first.calculated_place
      @new_player.calculated_place.should < @last.calculated_place
    end
    it "should be nil" do
      players(:incative).calculated_place.should be_nil
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
