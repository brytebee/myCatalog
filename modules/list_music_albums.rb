module MusicAblbumList
  def list_all_music_albums
    if @music_albums.length.zero?
      puts 'Database is empty'
    else
      puts 'List of Genre: '
      @music_albums.each_with_index do |music_album, index|
        puts "#{index}: Genre: Name: #{music_album.name}"
      end
    end
  end
end
