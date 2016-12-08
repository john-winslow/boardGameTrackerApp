class GamesController < ApplicationController
  def index
    @games = Game.all.limit(25)
  end
end
