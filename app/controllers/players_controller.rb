class PlayersController < ApplicationController
  
  def index
     @title = "All Players"
     @players = Player.paginate(:page => params[:page])
  end
end
