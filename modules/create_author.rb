module AuthorCreator
  def add_author
    puts 'Create a new author'
    print "Insert the author's first name: "
    first_name = gets.chomp
    print "Insert the author's last name: "
    last_name = gets.chomp
    @authors << Author.new(first_name, last_name)
    write_authors
    puts 'Author created successfully.'
  end
end
