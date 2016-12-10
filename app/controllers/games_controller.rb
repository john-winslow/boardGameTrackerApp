class GamesController < ApplicationController
  def index
    @games = Game.all.limit(25)
  end

  def show
    @game = Game.find(params[:id])
  end

  def new 
    @game = Game.find(params[:id])
    @comments = @game.comments
  end

  def create
    @game = Game.find(params[:id])
    @comment = @game.comments.new

    if @comment.save
      redirect game_path(@game)
    else
      redirect game_path(@game)
    end
  end

  
end
