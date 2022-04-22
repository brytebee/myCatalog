module GameCreator
  def add_game
    user_options = user_game_info
    multiplayer = user_options[0]
    last_played_at = user_options[1]
    publish_date = user_options[2]
    create_new_game(multiplayer, last_played_at, publish_date)
    puts 'Game created successfully.'
    write_authors
  end

  def create_new_game(multiplayer, last_played_at, publish_date)
    if @authors.length.zero?
      new_author = create_game_author
      @games << Game.new(multiplayer, last_played_at, publish_date, new_author)
    else
      print 'Do you want to create a new author or pick from the current author List. (Y or N)'
      select_new_author = gets.chomp
      select_new_author = %w[y Y].include?(select_new_author)
      p select_new_author
      if select_new_author
        new_author = create_game_author
        @games << Game.new(multiplayer, last_played_at, publish_date, new_author)
      else
        puts 'Pick an author from the current Authors already given(based on ID)'
        list_all_authors
        author_id = gets.chomp.to_i
        @games << Game.new(multiplayer, last_played_at, publish_date, @authors[author_id])
      end
    end
    write_games
  end

  def user_game_info
    puts 'Create a new game'
    print 'Is this game multiplayer(Y/N): '
    multiplayer = gets.chomp
    multiplayer = %w[y Y].include?(multiplayer)
    last_played_at = ''
    publish_date = ''
    loop do
      print 'Enter last date the game was played [Enter date in format (yyyy-mm-dd)]: '
      last_played_at = gets.chomp
      Date.parse(last_played_at)
      print 'Enter the date of publish [Enter date in format (yyyy-mm-dd)]: '
      publish_date = gets.chomp
      Date.parse(publish_date)
      break
    rescue StandardError
      # p e
      print "Invalid date entered. Please insert in the format specified \n"
    end
    [multiplayer, last_played_at, publish_date]
  end

  def create_game_author
    print "Enter Game Author's first name: "
    first_name = gets.chomp
    print 'Enter Game Authors last name: '
    last_name = gets.chomp
    new_author = Author.new(first_name, last_name)
    @authors << new_author
    puts 'Author has been added successfully'
    new_author
  end
end
