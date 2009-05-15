require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "index" do
  before(:each) do
    @player1 = mock_model(Player, :name => "P1",
      :raking => 12, :calculated_place => 1, :is_active? => true,
      :calculated_raking => 21)
    @player2 = mock_model(Player, :name => "P2",
      :raking => 8, :calculated_place => 2, :is_active? => true,
      :calculated_raking => 20)
    @players = [@player1, @player2]
    assigns[:players] = @players
    render "players/index"
  end

  it "should render players table and header" do
    response.should have_tag("table#players") do
      with_tag("tr#header") do
        with_tag("th", "#")
        with_tag("th", "Name")
        with_tag("th", "Raking")
      end
    end
  end

  it "should have all players" do
    response.should have_tag("table#players") do
      @players.each do |p|
        with_tag("tr#player-#{p.id}") do
          with_tag("td", "#{p.calculated_place}.")
          with_tag("td") do
            with_tag("a", { :text => p.name, :href => player_path(p) })
          end
          with_tag("td", "%.4f" % p.calculated_raking)
        end
      end
    end
  end
end
