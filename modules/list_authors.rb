module AuthorList
  def list_all_authors
    if @authors.length.zero?
      puts 'No authors are available'
    else
      puts 'List of all Authors: '
      @authors.each_with_index do |author, index|
        puts "#{index}) [Author] First Name: #{author.first_name}, Last Name: #{author.last_name} "
        puts "This author has the following Games in this collection:
        GameID['s] :#{author.items.map(&:id)}"
      end
    end
  end
end
