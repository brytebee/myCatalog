module PreserveMusicAlbumGenre
  def save_music_album
    data = []
    @music_albums.each do |music_album|
      data << { publish_date: music_album.publish_date, on_spotify: music_album.on_spotify }
    end

    File.write('./storage/music_album.json', JSON.generate(data))
  end

  def save_genre
    data = []
    @genres.each do |genre|
      data << { name: genre.name }
    end

    File.write('./storage/genre.json', JSON.generate(data))
  end

  def load_music_album
    return [] unless File.exist?('./storage/music_album.json')

    JSON.parse(File.read('./storage/music_album.json')).map do |on_spotify|
      MusicAlbum.new(on_spotify['publish_date'], on_spotify['on_spotify'])
    end
  end

  def load_genre
    return [] unless File.exist?('./storage/genre.json')

    JSON.parse(File.read('./storage/genre.json')).map do |genre|
      Genre.new(genre['name'])
    end
  end
end
