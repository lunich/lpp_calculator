class PlayersController < ApplicationController
  def index
    Player.recalculate_rakings
    @players = Player.all_active
  end
end
