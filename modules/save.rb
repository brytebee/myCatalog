module PreserveMusicAlbumGenre
  def save_music_album
    data = []
    @music_albums.each do |music_album|
      data << { pulish_date: music_album.publish_date, on_spotify: music_album.on_spotify }
    end

    File.write('./store/music_album.json', JSON.generate(data))
  end

  def save_genre
    data = []
    @genres.each do |genre|
      data << { name: genre.name }
    end

    File.write('./store/genre.json', JSON.generate(data))
  end

  def load_music_album
    return [] unless File.exist?('./store/music_album.json')

    JSON.parse(File.read('./store/music_album.json')).map do |on_spotify|
      MusicAlbum.new(on_spotify['pulish_date'], on_spotify['on_spotify'])
    end
  end
  
  def load_genre
    return [] unless File.exist?('./store/genre.json')

    JSON.parse(File.read('./store/genre.json')).map do |genre|
      MusicAlbum.new(genre['name'])
    end
  end
end