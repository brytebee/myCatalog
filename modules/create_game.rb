module GameCreator
  def add_game
    puts 'Create a new game'
    print 'Is this game multiplayer(Y/N): '
    multiplayer = gets.chomp
    multiplayer = %w[y Y].include?(multiplayer)
    print 'Enter last date the game was played [Enter date in format (yyyy-mm-dd)]: '
    last_played_at = gets.chomp
    print 'Enter the date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp
    @games << Game.new(multiplayer, last_played_at, publish_date)
    puts 'Game created successfully.'
  end
end
