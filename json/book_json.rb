module BookJson
  def write_save
    File.write('books.json', @books.to_json)
    File.write('labels.json', @labels.to_json)
  end

  # rubocop:disable Style/GuardClause
  def read_books
    if File.exist?('books.json')
      JSON.parse(File.read('books.json')).map do |book|
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
