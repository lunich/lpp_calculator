require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "new" do
  before(:each) do
    t1 = mock_model(Tournament, :name => "t1")
    t2 = mock_model(Tournament, :name => "t2")
    @tournaments = [t1, t2]
    assigns[:tournaments] = @tournaments
    render "tournaments/import"
  end

  it "should render form" do
    response.should have_tag("h1", "Import tournament data")
    response.should have_tag("form") do
      with_tag("p") do
        with_tag("label")
        with_tag("select#tournament_id")
      end
      with_tag("p") do
        with_tag("label")
        with_tag("file#file")
      end
      with_tag("p") do
        with_tag("input#tournament_submit")
        with_tag("a")
      end
    end
  end
end
