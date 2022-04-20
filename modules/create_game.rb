module GameCreator
  def add_game
    puts 'Create a new game'
    print 'Is this game multiplayer(Y/N): '
    multiplayer = gets.chomp
    multiplayer = %w[y Y].include?(multiplayer)
    loop do
      print 'Enter last date the game was played [Enter date in format (yyyy-mm-dd)]: '
      last_played_at = gets.chomp
      Date.parse(last_played_at)
      print 'Enter the date of publish [Enter date in format (yyyy-mm-dd)]: '
      publish_date = gets.chomp
      Date.parse(publish_date)
    rescue StandardError
      print "Invalid date entered. Please insert in the format specified \n"
    end
    @games << Game.new(multiplayer, last_played_at, publish_date)
    puts 'Game created successfully.'
  end
end
