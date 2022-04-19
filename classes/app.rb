require_relative './item'
require_relative './book'
require_relative './label'
require_relative './music_album'
require_relative './genre'
require_relative '../modules/create_book'
require_relative '../modules/list_books'
require_relative '../modules/list_labels'
require './modules/create_music_album'
require './modules/list_genre'
require './modules/list_music_albums'
require './modules/save'
require 'json'


class App
  include CreateBook
  include CreateMusicAlbum
  include BookList
  include LabelList
  include GenreList
  include MusicAblbumList
  include PreserveMusicAlbumGenre

  def initialize
    @books = []
    @labels = []
    @music_albums = load_music_album
    @genres = load_genre
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
    else
      puts 'Please enter a number between 1 and 10.'
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
end
