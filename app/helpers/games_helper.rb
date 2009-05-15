module GamesHelper
  def format_game(game)
    content_tag(:p, :id => "game-#{game.id}") do
      content_tag(:p) do
        time_format(game.time)
      end +
      content_tag(:span) do
        game.player1.name
      end +
      "&nbsp;" +
      "(#{game.match1.raking})" +
      "&nbsp;" +
      "&ndash;" +
      "&nbsp;" +
      content_tag(:span) do
        game.player2.name
      end +
      "&nbsp;" +
      "(#{game.match2.raking})" +
      "&nbsp;" +
      "&ndash;" +
      "&nbsp;" +
      content_tag(:span) do
        game.result1
      end +
      ":" +
      content_tag(:span) do
        game.result2
      end
    end
  end
end
