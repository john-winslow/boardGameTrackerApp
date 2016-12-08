require 'json'
require 'awesome_print'
require 'httparty'

Game.delete_all
# base_uri 'https://bgg-json.azurewebsites.net'

def get_hot_games
  HTTParty.get('https://bgg-json.azurewebsites.net/hot')
end

def get_game_info(game_id)
  HTTParty.get("https://bgg-json.azurewebsites.net/thing/#{game_id}")
end

def white_space_cleaner(game_object)
  JSON.parse(game_object)
end



hot_games = get_hot_games
hot_games_hash = JSON.parse(hot_games)

hot_games_hash.each do |game_object|
  game_id = game_object['gameId']
  game_json_object = white_space_cleaner(get_game_info(game_id))

    Game.create!(
      name:           game_json_object['name'],
      image:          game_json_object['image'],
      thumbnail:      game_json_object['thumbnail'],
      description:    game_json_object['description'],
      min_players:    game_json_object['minPlayers'],
      max_players:    game_json_object['maxPlayers'],
      year_published: game_json_object['yearPublished'],
      playing_time:   game_json_object['playingTime'],
      creator_id:     1
    )

end
