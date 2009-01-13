require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "index" do
  before(:each) do
    @t1 = mock_model(Tournament, :name => "LPP1",
      :start => DateTime.now - 12.days, :end => DateTime.now - 10.days,
      :total_raking => 100, :coeff => 1, :raking => 100
    )
    @t2 = mock_model(Tournament, :name => "LPP2",
      :start => DateTime.now - 6.days, :end => DateTime.now - 4.days,
      :total_raking => 100, :coeff => 0.8, :raking => 80
    )
    @tournaments = [@t1, @t2]
    assigns[:tournaments] = @tournaments
    render "tournaments/index"
  end

  it "should render tournaments table" do
    response.should have_tag("table#tournaments") do
      with_tag("tr#header") do
        with_tag("th", "#")
        with_tag("th", "Name")
        with_tag("th", "Start")
        with_tag("th", "End")
        with_tag("th", "Total Raking")
        with_tag("th", "Coeff")
        with_tag("th", "Raking")
      end
      @tournaments.each_with_index do |t, n|
        with_tag("tr#tournament-#{t.id}") do
          with_tag("td", "#{n+1}.")
          with_tag("td") do
            with_tag("a", t.name)
          end
          with_tag("td", t.start.strftime("%Y-%m-%d"))
          with_tag("td", t.end.strftime("%Y-%m-%d"))
          with_tag("td", "#{t.total_raking}")
          with_tag("td", "#{t.coeff}")
          with_tag("td", "#{t.raking}")
        end
      end
    end
  end
end
