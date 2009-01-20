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
end
