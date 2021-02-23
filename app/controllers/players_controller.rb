class PlayersController < ApplicationController

  def index
   if params[:user_id]
      user = User.find(params[:user_id])
      @players = user.players
   else 
      @players = Player.all
   end 

   render json: { players: @players }
  end

end

  