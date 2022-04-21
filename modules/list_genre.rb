module GenreList
  def list_all_genres
    if @genres.length.zero?
      puts 'Database is empty'
    else
      puts 'List of Genre: '
      @genres.each_with_index do |genre, index|
        puts "[#{index}] Genre: Name: #{genre.name}"
      end
    end
  end
end
