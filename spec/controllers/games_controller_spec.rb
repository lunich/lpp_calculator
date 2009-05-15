require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe GamesController do
  it "should use GamesController" do
    controller.should be_an_instance_of(GamesController)
  end

  describe "routes" do
    it "should be valid for index" do
      route_for(:controller => "games", :action => "index").should == "/games"
      params_from(:get, "/games").should == { :controller => "games", :action => "index" }
    end
    it "should be valid for show" do
      route_for(:controller => "games", :action => "show", :id => 12).should == "/games/12"
      params_from(:get, "/games/12").should == { :controller => "games", :action => "show", :id => "12" }
    end
    it "should be valid for import" do
      route_for(:controller => "games", :action => "import").should == "/games/import"
      params_from(:get, "/games/import").should == { :controller => "games", :action => "import" }
    end
    it "should be valid for insert" do
      route_for(:controller => "games", :action => "insert").should == "/games/insert"
      params_from(:put, "/games/insert").should == { :controller => "games", :action => "insert" }
    end
    it "should be valid for insert_q" do
      route_for(:controller => "games", :action => "insert_q").should == "/games/insert_q"
      params_from(:put, "/games/insert_q").should == { :controller => "games", :action => "insert_q" }
    end
  end

  describe "index" do
    before(:each) do
      g1 = mock_model(Game)
      g2 = mock_model(Game)
      @games = [g1, g2]
      Game.stub!(:all, @games)
      get "index"
    end
    it "should success" do
      response.should be_success
    end
    it "should render valid template" do
      response.should render_template("games/index")
    end
    it "should call Games.all method" do
      Game.should_receive(:all).and_return(@games)
    end
    it "should assign games" do
      #assigns[:games].should == @games
    end
  end

  describe "show" do
    before(:each) do
      @game = mock_model(Game)
      Game.stub!(:find, @game)
      get "show"
    end
    it "should success" do
      response.should be_success
    end
    it "should render valid template" do
      response.should render_template("games/show")
    end
    it "should call Games.find method" do
      Game.should_receive(:find).and_return(@game)
    end
    it "should assign game" do
      #assigns[:game].should == @game
    end
  end

  describe "import" do
    before(:each) do
      get :import
    end
    it "should success" do
      response.should be_success
    end
    it "should render valid template" do
      response.should render_template("games/import")
    end
  end

  [:insert, :insert_q].each do |method|
    describe method do
      before(:each) do
        Game.stub!(:import_errors => [])
        Game.stub!(:import).and_return(true)
        @valid_attributes = {
          :file => ""
        }
      end
      it "should redirect if success" do
        put method, @valid_attributes
        flash[:notice].should == "Games data was successfully imported"
        response.should be_redirect
        response.should redirect_to(games_path)
      end
      it "should call find and import" do
        put method, @valid_attributes
        Game.should_receive(:import).with(@valid_attributes[:file]).and_return(true)
      end
      it "should render import if failed" do
        Game.stub!(:import => false)
        Game.stub!(:import_errors => ["ERR"])
        put method, @valid_attributes
        flash[:error].should == "Can't import games data<br>ERR"
        response.should be_success
        response.should render_template("games/import")
      end
    end
  end
end
