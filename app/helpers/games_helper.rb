module GamesHelper

  def has_game?(game)
    current_user.games.exists?(game.id)
  end

end