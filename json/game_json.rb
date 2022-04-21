module GamesJson
  def write_games
    File.write('./storage/games.json', @games.to_json)

    file = File.open('./storage/games.json', 'w')
    game_data = @games.map do |game|
      { class: game.class, publish_date: game.publish_date, last_played_at: game.last_played_at,
        multiplayer: game.multiplayer, author: game.author }.compact
    end
    file.puts(JSON.generate(game_data))
    file.close
  end

  def read_games
    return unless File.exist?('./storage/games.json')

    JSON.parse(File.read('./storage/games.json')).map do |game|
      new_game = add_new_game(game)
      @games << new_game
    end
  end

  def add_new_game(game)
    new_author = @authors.find { |author| author.id == game['author']['id'] }
    Game.new(game['multiplayer'], game['last_played_at'], game['publish_date'], new_author)
  end
end
