require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PlayersController do

  it "should use PlayersController" do
    controller.should be_an_instance_of(PlayersController)
  end

  describe "routes" do
    [["index", ""]].each do |action, path|
      it "#{action} should be valid" do
        route_for(:controller => "players", :action => action).should == "/players#{path}"
        params_from(:get, "/players#{path}").should == {:controller => "players", :action => action}
      end
    end
  end

  describe "index" do
    before(:each) do
      @player1 = mock_model(Player)
      @player2 = mock_model(Player)
      @players = [@player1, @player2]
      Player.stub!(:all => @players)
      get "index"
    end
    it "should assign players" do
      Player.should_receive(:all).and_return(@players)
    end
    it "should success" do
      response.should be_success
    end
    it "should render valid template" do
      response.should render_template("players/index")
    end
  end
end
