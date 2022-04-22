module GameList
  def list_all_games
    if @games.length.zero?
      puts 'No games are available'
    else
      puts 'List of all Games: '
      @games.each_with_index do |game, index|
        puts "#{index}) Game_ID: #{game.id}, Publish Date: #{game.publish_date}, Last Played At: #{game.last_played_at},
  Multiplayer: #{game.multiplayer}, Author: First_Name: #{game.author.first_name}, Last_Name: #{game.author.last_name}"
      end
    end
  end
end
