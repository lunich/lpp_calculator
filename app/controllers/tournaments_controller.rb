class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all(:order => "start")
  end
end
