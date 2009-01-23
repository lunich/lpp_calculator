require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "new" do
  before(:each) do
    @tournament = mock_model(Tournament, :name => "",
      :start => DateTime.now, :end => DateTime.now,
      :total_raking => "", :coeff => "", :raking => "",
      :new_record? => true, :tours => [], :qualify => true
    )
    assigns[:tournament] = @tournament
    render "tournaments/new"
  end

  it "should render form" do
    response.should have_tag("h1", "New tournament")
    response.should have_tag("form") do
      with_tag("p") do
        with_tag("label")
        with_tag("input#tournament_name")
      end
      with_tag("p") do
        1.upto(5) do |i|
          with_tag("select#tournament_start_#{i}i")
        end
      end
      with_tag("p") do
        1.upto(5) do |i|
          with_tag("select#tournament_end_#{i}i")
        end
      end
      with_tag("p") do
        with_tag("input#tournament_total_raking")
      end
      with_tag("p") do
        with_tag("input#tournament_submit")
      end
    end
  end
end
