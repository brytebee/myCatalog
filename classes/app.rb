require_relative './item'
require_relative './book'
require_relative './label'
require_relative './music_album'
require_relative './genre'
require_relative './game'
require_relative './author'
require_relative '../modules/create_book'
require_relative '../modules/create_game'
require_relative '../modules/create_author'
require_relative '../modules/list_books'
require_relative '../modules/list_authors'
require_relative '../modules/list_labels'
require_relative '../modules/list_games'
require './modules/create_music_album'
require './modules/list_genre'
require './modules/list_music_albums'
require './json/album_genre_json'
require 'json'
require_relative '../json/book_json'
require_relative '../json/author_json'
require_relative '../json/game_json'
require_relative '../json/label_json'

class App
  include CreateBook
  include GameCreator
  include AuthorCreator
  include LabelList
  include GameList
  include AuthorList
  include GenreList
  include CreateMusicAlbum
  include MusicAblbumList
  include PreserveMusicAlbumGenre
  include BookJson
  include LabelJson
  include AuthorsJson
  include GamesJson

  def initialize
    @books = []
    @labels = []
    @music_albums = []
    @genres = []
    @games = []
    @authors = []
    @music_albums = load_music_album
    @genres = load_genre
  end

  def console_entry_point
    puts 'Welcome to my Catalog of Things App!'
    until list_of_options
      input = gets.chomp
      if input == '11'
        exit_app
        puts 'Good Bye!'
        break
      end

      option input
    end
  end

  # rubocop:disable Metrics
  def option(input)
    case input
    when '1'
      list_all_books
    when '2'
      list_all_music_albums
    when '3'
      list_all_games
    when '4'
      list_all_labels
    when '5'
      list_all_genres
    when '6'
      list_all_authors
    when '7'
      add_book
    when '8'
      add_music_album
    when '9'
      add_game
    when '10'
      add_author
    else
      puts 'Please enter a number between 1 and 11.'
      puts
    end
    # rubocop:enable Metrics
  end

  def exit_app
    save_music_album
    save_genre
    puts
    puts 'Thank You for using my myCatalog Library!'
    puts 'Built with 💖 by Bright | Dejan | Alick 🗽'
  end

  def start
    read_books
    read_labels
    read_authors
    read_games
  end
end
