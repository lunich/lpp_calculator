module TournamentsHelper
  def add_tour_link
    button_to_function "Add player" do |page|
      page.insert_html(:bottom, "tournament_participations", :partial => "tournaments/tournament_participation",
        :object => TournamentParticipation.new)
    end
  end

  def players_for_select
    [["---Select Player---", nil]] + Player.all(:order => "name").map { |p| [p.name, p.id]}
  end

end
