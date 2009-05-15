class PlayersController < ApplicationController
  def index
    @players = Player.all_active
  end

  def show
    @player = Player.find(params[:id], :include => :events)
    @players_count = Player.count
  end
end
