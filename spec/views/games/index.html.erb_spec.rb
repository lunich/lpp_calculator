require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "index" do
  before(:each) do
    match1 = mock_model(Match, :raking => 12.000, :to_sign => "positive")
    match2 = mock_model(Match, :raking => -12.000, :to_sign => "negative")
    match3 = mock_model(Match, :raking => -12.000, :to_sign => "negative")
    match4 = mock_model(Match, :raking => 12.000, :to_sign => "positive")
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
    @games.stub!(:total_pages => 2)
    @games.stub!(:current_page => 1)
    @games.stub!(:previous_page => 1)
    @games.stub!(:next_page => 1)
    assigns[:games] = @games
    render "games/index"
  end

  it "should render games table and header" do
    response.should have_tag("div.games") do
      @games.each do |g|
        with_tag("div#game-#{g.id}") do
          with_tag("p.date") do
            with_tag("span.details") do
              with_tag("a")
            end
          end
        end
      end
    end
  end
end
