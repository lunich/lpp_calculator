require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TournamentsController do

  it "should use TournamentsController" do
    controller.should be_an_instance_of(TournamentsController)
  end

  describe "routes" do
    it "should be valid for index" do
      route_for(:controller => "tournaments", :action => "index").should == "/tournaments"
      params_from(:get, "/tournaments").should == { :controller => "tournaments", :action => "index" }
    end
    it "should be valid for show" do
      route_for(:controller => "tournaments", :action => "show", :id => 12).should == "/tournaments/12"
      params_from(:get, "/tournaments/12").should == { :controller => "tournaments", :action => "show", :id => "12" }
    end
    it "should be valid for new" do
      route_for(:controller => "tournaments", :action => "new").should == "/tournaments/new"
      params_from(:get, "/tournaments/new").should == { :controller => "tournaments", :action => "new" }
    end
    it "should be valid for create" do
      params_from(:post, "/tournaments").should == { :controller => "tournaments", :action => "create" }
    end
  end

  describe "index" do
    before(:each) do
      @t1 = mock_model(Tournament)
      @t2 = mock_model(Tournament)
      @tournaments = [@t1, @t2]
      Tournament.stub!(:all).and_return(@tournaments)
      get "index"
    end
    it "should assign players" do
      Tournament.should_receive(:all).and_return(@tournaments)
    end
    it "should success" do
      response.should be_success
    end
    it "should render valid template" do
      response.should render_template("tournaments/index")
    end
  end

  describe "show" do
    before(:each) do
      p1 = mock_model(Player, :name => "Player1")
      p2 = mock_model(Player, :name => "Player2")
      t1 = mock_model(TournamentParticipation, :player => p1, :place => 1)
      t2 = mock_model(TournamentParticipation, :player => p2, :place => 2)
      @tournament_participations = [t1, t2]
      @tournament = mock_model(Tournament, :tournament_participations => @tournament_participations)
      Tournament.stub!(:find).and_return(@tournament)
      get "show", :id => @tournament.id
    end
    it "should success" do
      response.should be_success
    end
    it "should assign new tournament on GET show" do
      assigns[:tournament].should == @tournament
    end
    it "should find tournament on GET show" do
      Tournament.should_receive(:find).and_return(@tournament)
    end
    it "should render valid template" do
      response.should render_template("tournaments/show")
    end
  end

  describe "new" do
    before(:each) do
      din_array = mock(Tour)
      din_array.stub!(:build => [])
      @tournament = mock_model(Tournament, :tournament_participations => din_array)
      Tournament.stub!(:new).and_return(@tournament)
      get :new
    end
    it "should success" do
      response.should be_success
    end
    it "should return new tournament on GET new" do
      Tournament.should_receive(:new).and_return(@tournament)
    end
    it "should assign new tournament on GET new" do
      assigns[:tournament].should == @tournament
    end
    it "should render valid template" do
      response.should render_template("tournaments/new")
    end
  end

  describe "create" do
    before(:each) do
      @tournament = mock_model(Tournament, :save => true)
      @valid_attributes = {
        :tournament => {
          :name => "SPP1",
          :start => Time.now - 12.hours,
          :end => Time.now,
          :total_raking => 91
        }
      }
      Tournament.stub!(:new).and_return(@tournament)
    end
    it "should redirect if success" do
      post "create", @valid_attributes
      flash[:notice].should == "Tournament successfully created"
      response.should be_redirect
      response.should redirect_to(tournaments_path)
    end
    it "should render new if failed" do
      @tournament.stub!(:save => false)
      post "create", @valid_attributes
      flash[:error].should == "Can't create tournament"
      response.should be_success
      response.should render_template("tournaments/new")
    end
    it "should call new and save" do
      post "create", @valid_attributes
      Tournament.should_receive(:new).with(@valid_attributes).and_return(@tournament)
    end
  end
end
