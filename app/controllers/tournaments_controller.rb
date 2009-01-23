class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all(:order => "start")
  end

  def show
    @tournament = Tournament.find(params[:id], :include => { :tours => :player })
  end

  def new
    @tournament = Tournament.new
    count = params[:count] || 16
    count.to_i.times do |i|
      @tournament.tours.build(:tournament_place => i + 1)
    end
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

  def edit
    @tournament = Tournament.find(params[:id])
  end

  def update
    @tournament = Tournament.find(params[:id])
    if @tournament.update_attributes(params[:tournament])
      flash[:notice] = "Tournament successfully updated"
      redirect_to @tournament
    else
      flash[:error] = "Can't update tournament"
      render :action => "tournaments/edit"
    end
  end

end
