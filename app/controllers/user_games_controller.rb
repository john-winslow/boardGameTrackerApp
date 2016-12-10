class UserGamesController < ApplicationController

  def create
    @game = Game.find(params[:user_games][:id])
    current_user.games << @game
    respond_to do |format|
      format.js 
      format.html {redirect_to '/'}
    end
  end

  # private
  #   def user_games_params
  #     params.require(:user_games).permit()
  #   end

end