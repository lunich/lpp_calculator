# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def item_prefix(item)
    item.new_record? ? 'new' : 'existing'
  end

  def format_time(time)
    time.strftime("%d.%m.%Y")
  end

  def format_game_simple(game)
    "#{game.player1.name}&nbsp;&ndash;&nbsp;#{game.player2.name}&nbsp;&ndash;&nbsp;#{game.result1}:#{game.result2}"
  end

  def format_game(game)
    content_tag(:span) do
      link_to(game.player1.name, game.player1)
    end +
    "&nbsp;" +
    content_tag(:span, :class => "raking #{game.match1.to_sign}") do
      "(#{game.match1.raking})"
    end +
    "&nbsp;" +
    "&ndash;" +
    "&nbsp;" +
    content_tag(:span) do
      link_to(game.player2.name, game.player2)
    end +
    "&nbsp;" +
    content_tag(:span, :class => "raking #{game.match2.to_sign}") do
      "(#{game.match2.raking})"
    end +
    "&nbsp;" +
    "&ndash;" +
    "&nbsp;" +
    content_tag(:span, :class => "result") do
      "#{game.result1}:#{game.result2}"
    end
  end
end
