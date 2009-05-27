class GamesController < ApplicationController
  before_filter :find_player, :only => [:index]

  def index
    if @player
      @games = @player.games.paginate(:page => params[:page], :per_page => 20,
        :order => "games.time DESC", :include => [:player1, :player2, :match1, :match2])
    else
      @games = Game.paginate(:page => params[:page], :per_page => 20,
        :order => "games.time DESC", :include => [:player1, :player2, :match1, :match2])
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def import
  end

  def insert
    if(Game.import(params[:file]))
      flash[:notice] = "Games data was successfully imported"
      redirect_to games_path
    else
      flash[:error] = "Can't import games data"
      unless Game.import_errors.empty?
        flash[:error] += "<br>" + Game.import_errors.join("<br>")
      end
      render :action => "import"
    end
  end

  def insert_q
    if(Game.import(params[:file], QualifyGame))
      flash[:notice] = "Games data was successfully imported"
      redirect_to games_path
    else
      flash[:error] = "Can't import games data"
      unless Game.import_errors.empty?
        flash[:error] += "<br>" + Game.import_errors.join("<br>")
      end
      render :action => "import"
    end
  end

protected
  def find_player
    unless params[:player_id].blank?
      @player = Player.find(params[:player_id])
    end
  end
end
