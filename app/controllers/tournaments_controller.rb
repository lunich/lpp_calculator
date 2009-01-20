class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all(:order => "start")
  end

  def show
    @tournament = Tournament.find(params[:id], :include => { :tours => :player })
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(params[:tournament])
    if @tournament.save
      flash[:notice] = "Tournament successfully created"
      redirect_to tournaments_path
    else
      flash[:error] = "Can't create tournament"
      render :action => "tournaments/new"
    end
  end
end
