module CreateMusicAlbum
  def on_spotify?
    print 'Is album on Spotify? [Y/N]: '
    on_spotify = gets.chomp.downcase
    if on_spotify == 'y'
      true
    else
      on_spotify == 'n' ? false : on_spotify?
    end
  end

  def add_music_album
    puts 'Create a new Album'
    is_on_spotify = on_spotify?
    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp
    puts "Published date: #{publish_date} and #{is_on_spotify ? 'on spotify.' : 'not on spotify.'}"
    @music_albums << MusicAlbum.new(publish_date, is_on_spotify)
    puts 'Music album created successfully!'
    unless @genres.length.zero?
      puts 'Select a Album by index:'
      list_all_genres
      genre_index = gets.chomp.to_i
      @genres[genre_index].add_item(@music_albums[-1])
      puts 'Album has been added to Genre'
    end
    create_genre(@music_albums[-1])
  end

  def create_genre(item = nil)
    print 'Enter Genre name: '
    name = gets.chomp
    @genres << Genre.new(name) if item.nil?
    genre = Genre.new(name)
    genre.add_item(item)
    @genres << genre
    puts 'Genre has been added successfully'
  end
end
