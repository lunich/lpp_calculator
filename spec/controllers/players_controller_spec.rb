require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PlayersController do

  it "should use PlayersController" do
    controller.should be_an_instance_of(PlayersController)
  end

  describe "routes" do
    it "should be valid for index" do
      route_for(:controller => "players", :action => "index").should == "/players"
      params_from(:get, "/players").should == { :controller => "players", :action => "index" }
    end
    it "should be valid for show" do
      route_for(:controller => "players", :action => "show", :id => 12).should == "/players/12"
      params_from(:get, "/players/12").should == { :controller => "players", :action => "show", :id => "12" }
    end
  end

  describe "index" do
    before(:each) do
      @player1 = mock_model(Player)
      @player2 = mock_model(Player)
      @players = [@player1, @player2]
      Player.stub!(:all_active => @players)
      get "index"
    end
    it "should assign players" do
      Player.should_receive(:all_active).and_return(@players)
    end
    it "should success" do
      response.should be_success
    end
    it "should render valid template" do
      response.should render_template("players/index")
    end
  end
end
