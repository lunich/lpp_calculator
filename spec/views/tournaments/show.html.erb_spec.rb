require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "show" do
  before(:each) do
    @p1 = mock_model(Player, :name => "P1")
    @p2 = mock_model(Player, :name => "P2")
    @t1 = mock_model(TournamentParticipation, :player => @p1, :place => 1, :raking => 10)
    @t2 = mock_model(TournamentParticipation, :player => @p2, :place => 2, :raking => 9)
    @tournament = mock_model(Tournament, :name => "LPP1",
      :start => DateTime.now - 12.days, :end => DateTime.now - 10.days,
      :total_raking => 100, :coeff => 1, :raking => 100,
      :tournament_participations => [@t1, @t2]
    )
    assigns[:tournament] = @tournament
    render "tournaments/show"
  end

  it "should render tournament table" do
    response.should have_tag("table#tournament-#{@tournament.id}") do
      with_tag("tr#header") do
        with_tag("th", "Place")
        with_tag("th", "Player")
        with_tag("th", "Points")
      end
      @tournament.tournament_participations.each do |t|
        with_tag("tr#tour-#{t.id}") do
          with_tag("td", "#{t.place}.")
          with_tag("td", "#{t.player.name}")
          with_tag("td", "#{t.raking}")
        end
      end
    end
  end
end
