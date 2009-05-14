require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Game, :shared => true do
  fixtures :players
  before(:each) do
    @player1 = players(:one)
    @player2 = players(:two)
    @valid_attributes = {
      :result1 => 5,
      :result2 => 4,
      :player1_id => @player1.id,
      :player2_id => @player2.id,
      :time => Time.now
    }
  end

  describe "create" do
    it "should create a new instance given valid attributes" do
      lambda do
        game = Game.create(@valid_attributes)
        game.valid?.should == true
      end.should change(Game, :count).by(1)
    end
    it "should build players associations" do
      game = Game.create(@valid_attributes)
      game.player1.should == @player1
      game.player2.should == @player2
    end
    it "should build matches associations" do
      game = Game.create(@valid_attributes)
      game.match1.should_not be_nil
      game.match2.should_not be_nil
    end
    it "should add 2 events" do
      lambda do
        game = Game.create(@valid_attributes)
      end.should change(Event, :count).by(2)
    end
    describe "should require" do
      [:result1, :result2, :player1_id, :player2_id, :time].each do |attr|
        it "#{attr}" do
          lambda do
            game = Game.create(@valid_attributes.merge(attr => nil))
            game.errors.on(attr).should_not be_nil
          end.should_not change(Game, :count)
        end
      end
    end
  end

  describe "destroy" do
    before(:each) do
      @game = Game.create(@valid_attributes)
    end
    it "should remove 2 events" do
      lambda do
        @game.destroy
      end.should change(Event, :count).by(-2)
    end
  end

  describe "import" do
    fixtures :players
    before(:each) do
      @file = Tempfile.open("test.tmp")
      @file.puts("21.12.2009;#{players(:one).name};+12.5656;#{players(:two).name};-12.5656;8;7")
      @file.puts("22.12.2009;#{players(:one).name};-12.5656;#{players(:two).name};+12.5656;7;8")
    end
    it "should create 2 games" do
      lambda do
        Game.import(@file)
      end.should change(Game, :count).by(2)
    end
    it "should create 4 matches" do
      lambda do
        Game.import(@file)
      end.should change(Match, :count).by(4)
    end
    after(:each) do
      @file.close
    end
  end

end
