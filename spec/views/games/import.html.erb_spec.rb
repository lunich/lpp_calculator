require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "import" do
  before(:each) do
    render "games/import"
  end

  it "should render import form" do
    response.should have_tag("h1", "Import games data")
    response.should have_tag("h2", "Import rakings")
    response.should have_tag("form", :action => "/games/insert") do
      with_tag("p") do
        with_tag("label", :for => "file")
        with_tag("input#file")
      end
      with_tag("p") do
        with_tag("input")
        with_tag("a")
      end
    end
    response.should have_tag("h2", "Import qualifications")
    response.should have_tag("form", :action => "/games/insert_q") do
      with_tag("p") do
        with_tag("label", :for => "file")
        with_tag("input#file")
      end
      with_tag("p") do
        with_tag("input")
        with_tag("a")
      end
    end
  end
end
