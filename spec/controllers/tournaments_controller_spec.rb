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
  end

  describe "index" do
    before(:each) do
      @t1 = mock_model(Tournament)
      @t2 = mock_model(Tournament)
      @tournaments = [@t1, @t2]
      Tournament.stub!(:all => @tournaments)
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
end
