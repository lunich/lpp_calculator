require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TournamentParticipation do
  fixtures :tournaments, :players
  before(:each) do
    @tournament = tournaments(:one)
    @player = players(:three)
    @valid_attributes = {
      :tournament_id => @tournament.id,
      :player_id => @player.id,
      :time => Time.now,
      :place => 3,
      :raking => 12
    }
  end

  describe "create with valid attrs" do
    before(:each) do
      @tp = TournamentParticipation.create(@valid_attributes)
    end
    it "should create a new instance given valid attributes" do
      @tp.valid?.should == true
      @tp.errors.size.should == 0
      @tp.new_record?.should == false
    end
    it "should associate tournament" do
      @tp.tournament.should == @tournament
    end
    it "should associate player" do
      @tp.player.should == @player
    end
  end

  describe "create should require" do
    [ :player_id,
      #:tournament_id,
      :place,
      :raking].each do |attr|
      it "#{attr}" do
        @tp = TournamentParticipation.create(@valid_attributes.merge(attr => nil))
        @tp.valid?.should == false
        @tp.errors.on(attr).should_not be_nil
      end
    end
    describe "valid place" do
      ["A", -1, 0, 2.122].each do |invalid|
        it "#{invalid}" do
          @tp = TournamentParticipation.create(@valid_attributes.merge(:place => invalid))
          @tp.valid?.should == false
          @tp.errors.on(:place).should_not be_nil
        end
      end
    end
  end

  describe "create should require unique scope" do
    fixtures :tournament_participations
    before(:each) do
      @old_part = tournament_participations(:t1_p1)
    end
    it "tournament and player" do
      @tp = TournamentParticipation.create(
        :player_id => @old_part.player_id,
        :tournament_id => @old_part.tournament_id,
        :place => @old_part.place + 100
      )
      @tp.valid?.should == false
      @tp.errors.on(:player_id).should_not be_nil
      @tp.errors.on(:tournament_id).should_not be_nil
    end
  end
end
