Game.delete_all
User.delete_all
Tag.delete_all

def get_hot_games
  HTTParty.get("https://bgg-json.azurewebsites.net/hot")
end

def get_game_info(game_id)
  HTTParty.get("https://bgg-json.azurewebsites.net/thing/#{game_id}")
end

def json_parser(game_object)
  JSON.parse(game_object)
end

admin = User.create(username: 'cillin',email: 'collin@mail',password: 'password1')

10.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: Faker::Internet.password)
end

hot_games = get_hot_games
hot_games_hash = json_parser(hot_games)

hot_games_hash.each do |game_object|
  game_id = game_object['gameId']
  game_json_object = json_parser(get_game_info(game_id))

    game = Game.find_or_create_by!(
      name:           game_json_object['name'],
      image:          game_json_object['image'],
      thumbnail:      game_json_object['thumbnail'],
      description:    game_json_object['description'],
      min_players:    game_json_object['minPlayers'],
      max_players:    game_json_object['maxPlayers'],
      year_published: game_json_object['yearPublished'],
      playing_time:   game_json_object['playingTime'],
      creator:        admin
    )

  if game_json_object['mechanics']
    game_json_object['mechanics'].each do |tag|
      game.tags.find_or_create_by(
        name: tag
      )
    end
  end

end
