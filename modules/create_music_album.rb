module CreateMusicAlbum
  def add_music_album
    puts 'Create a new Album'

    def on_spotify?
      print 'Is album on Spotify? [Y/N]: '
      on_spotify = gets.chomp.downcase
      on_spotify == 'y' ? true : on_spotify == 'n' ? false : on_spotify?
    end

    is_on_spotify = on_spotify?
    publish_date = DateTime.now.strftime('%F')
    puts "Published date: #{publish_date} and #{is_on_spotify ? 'on spotify.' : 'not on spotify.'}"
    @music_album << MusicAlbum.new(publish_date, is_on_spotify)
    puts 'Music album created successfully!'

    print 'Create new label: (y), or use already created label: (n) [Y/N] '
    input = gets.chomp.downcase == 'y' || false
    if input
      create_genre(@music_album[-1])
    else
      puts 'Select a Album by index:'
      list_all_genres
      genre_index = gets.chomp.to_i
      @genres[genre_index].add_item(@music_album[-1])
      puts 'Album has been added to label'
    end
  end

  def create_genre(item = nil)
    print 'Enter Genre name: '
    name = gets.chomp
    @labels << Label.new(name) if item.nil?
    genre = Label.new(name)
    genre.add_item(item)
    @genres << genre
    puts 'Genre has been added successfully'
  end
end
