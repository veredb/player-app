class PlayersController < ApplicationController
  
  def index
     @title = "All Players"
     @players = Player.paginate(:page => params[:page])
  end

  def new
     @title = "New Player"
     @player = Player.new
  end

end
