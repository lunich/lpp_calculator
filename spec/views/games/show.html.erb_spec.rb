require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "show" do
  before(:each) do
    match1 = mock_model(Match, :raking => 12.000, :to_sign => "positive")
    match2 = mock_model(Match, :raking => -12.000, :to_sign => "negative")
    player1 = mock_model(Player, :name => "Player1")
    player2 = mock_model(Player, :name => "Player2")
    @game = mock_model(Game, :time => Time.now - 5.days,
      :player1 => player1, :player2 => player2,
      :match1 => match1, :match2 => match2,
      :result1 => 5, :result2 => 4)
    assigns[:game] = @game
    render "games/show"
  end

  it "should render game result" do
    response.should have_tag("div#game-#{@game.id}") do
      with_tag("span", :class => "time", :text => @game.time.strftime("%d.%m.%Y"))
      with_tag("span", :class => "details", :text => "[details]")
      with_tag("span", @game.player1.name)
      with_tag("span", @game.player2.name)
    end
  end

end
