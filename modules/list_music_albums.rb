module MusicAblbumList
  def list_all_music_albums
    if @music_albums.length.zero?
      puts 'Database is empty'
    else
      puts 'List of Music Albums: '
      @music_albums.each_with_index do |music_album, index|
        puts "#{index}: Music Album: Publish Date: #{music_album.publish_date}"
      end
    end
  end
end
