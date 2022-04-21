module MusicAblbumList
  def list_all_music_albums
    if @music_albums.length.zero?
      puts 'Database is empty'
    else
      puts 'List of Music Albums: '
      @music_albums.each_with_index do |music_album, index|
        date = music_album.publish_date
        spotify = music_album.on_spotify
        puts "[#{index}] Music: Published #{date} is #{spotify ? 'on' : 'not on'} spotify"
      end
    end
  end
end
