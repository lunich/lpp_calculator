class PlayersController < ApplicationController
  def index
    @players = Player.all_active
  end

  def show
    @player = Player.find(params[:id], :include => :events)
    @events = @player.events.paginate(:page => params[:page], :per_page => 20)
    @players_count = Player.count
  end
end
