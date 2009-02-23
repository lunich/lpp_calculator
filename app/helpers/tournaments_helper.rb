module TournamentsHelper
  def add_tour_link
    button_to_function "Add player" do |page|
      page.insert_html(:bottom, "tours", :partial => "tournaments/tournament_participation",
        :object => Tour.new)
    end
  end

  def players_for_select
    [["---Select Player---", nil]] + Player.all(:order => "name").map { |p| [p.name, p.id]}
  end
end
