require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "index" do
  before(:each) do
    match1 = mock_model(Match, :raking => 12.000)
    match2 = mock_model(Match, :raking => -12.000)
    match3 = mock_model(Match, :raking => -12.000)
    match4 = mock_model(Match, :raking => 12.000)
    player1 = mock_model(Player, :name => "Player1")
    player2 = mock_model(Player, :name => "Player2")
    game1 = mock_model(Game, :time => Time.now - 10.days,
      :player1 => player1, :player2 => player2,
      :match1 => match1, :match2 => match2,
      :result1 => 5, :result2 => 4)
    game2 = mock_model(Game, :time => Time.now - 10.days,
      :player1 => player1, :player2 => player2,
      :match1 => match3, :match2 => match4,
      :result1 => 4, :result2 => 5)
    @games = [game1, game2]
    assigns[:games] = @games
    render "games/index"
  end

  it "should render games table and header" do
    response.should have_tag("table#games") do
      with_tag("tr#header") do
        with_tag("th", "Date")
        with_tag("th", "Player 1")
        with_tag("th", "Player 1 points")
        with_tag("th", "Player 2")
        with_tag("th", "Player 2 points")
        with_tag("th", "Result")
      end
    end
  end

  it "should have all games" do
    response.should have_tag("table#games") do
      @games.each do |g|
        with_tag("tr#game-#{g.id}") do
          with_tag("td", g.time.strftime("%d.%m.%Y"))
          with_tag("td") do
            with_tag("a", { :text => g.player1.name, :href => player_path(g.player1) })
          end
          with_tag("td", g.match1.raking.to_s)
          with_tag("td") do
            with_tag("a", { :text => g.player2.name, :href => player_path(g.player2) })
          end
          with_tag("td", g.match2.raking.to_s)
          with_tag("td", "#{g.result1}:#{g.result2}")
        end
      end
    end
  end
end
