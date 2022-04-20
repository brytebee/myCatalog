module GameList
  def list_all_games
    if @games.length.zero?
      puts 'No games are available'
    else
      puts 'List of all Games: '
      @games.each_with_index do |game, index|
        puts "#{index}) [Game] Publish Date: #{game.publish_date}, Last Played At: #{game.last_played_at},
           Multiplayer: #{game.multiplayer}"
      end
    end
  end
end
