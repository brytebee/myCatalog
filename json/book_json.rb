module BookJson
  def write_save
    File.write('./storage/books.json', @books.to_json)
    File.write('./storage/labels.json', @labels.to_json)
  end

  # rubocop:disable Style/GuardClause
  def read_books
    if File.exist?('./storage/books.json')
      JSON.parse(File.read('./storage/books.json')).map do |book|
        new_book = add_new_book(book)
        @books << new_book
      end
    end
  end

  # rubocop:enable Style/GuardClause

  def add_new_book(book)
    Book.new(book['publish_date'], book['publisher'], book['cover_state'])
  end
end
