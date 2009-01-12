require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "index" do
  before(:each) do
    @player1 = mock_model(Player, :name => "P1",
      :raking => 12, :calculated_place => 1)
    @player2 = mock_model(Player, :name => "P2",
      :raking => 8, :calculated_place => 2)
    @players = [@player1, @player2]
    assigns[:players] = @players
    render "players/index"
  end

  it "should render players table" do
    response.should have_tag("table#players") do
      with_tag("tr#header") do
        with_tag("th", "#")
        with_tag("th", "Name")
        with_tag("th", "Raking")
      end
      @players.each do |p|
        with_tag("tr#player-#{p.id}") do
          with_tag("td", "#{p.calculated_place}.")
          with_tag("td", p.name)
          with_tag("td", p.raking)
        end
      end
    end
  end
end
