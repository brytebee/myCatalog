module AuthorList
  def list_all_authors
    if @authors.length.zero?
      puts 'No authors are available'
    else
      puts 'List of all Authors: '
      @authors.each_with_index do |author, index|
        puts "#{index}) [Author] First Name: #{author.publish_date}, Last Name: #{author.last_played_at} "
      end
    end
  end
end
