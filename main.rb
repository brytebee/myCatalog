require './classes/app'

def list_of_options
  puts
  puts 'Choose an option by entering a number: '
  puts '1 - List all books'
  puts '2 - List all music albums'
  puts '3 - List all games'
  puts '4 - List all labels'
  puts '5 - List all genres '
  puts '6 - List all authors '
  puts '7 - Add a book '
  puts '8 - Add a music album '
  puts '9 - Add a game '
  puts '10 - Add an author'
  puts '11 - Exit'
end

def options
  list_of_options
  input = gets.chomp
  @app.option(input)
  options
end

def main
  @app = App.new
  @app.start
  @app.console_entry_point
end

main
