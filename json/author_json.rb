module AuthorsJson
  def write_authors
    File.write('./storage/authors.json', @authors.to_json)
  end

  def read_authors
    return unless File.exist?('./storage/authors.json')

    JSON.parse(File.read('./storage/authors.json')).map do |author|
      new_author = add_new_author(author)
      @authors << new_author
    end
  end

  def add_new_author(author)
    Author.new(author['first_name'], author['last_name'], author['id'])
  end
end
