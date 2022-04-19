module PreserveMusicAlbumGenre
  def save_music_album
    data = []
    @music_albums.each do |music_album|
      data << { pulish_date: music_album.publish_date, on_spotify: music_album.on_spotify }
    end

    File.write('./store/music_album.json', JSON.generate(data))
  end
end