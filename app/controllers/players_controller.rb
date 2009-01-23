class PlayersController < ApplicationController
  def index
    @players = Player.all_active
  end
end
