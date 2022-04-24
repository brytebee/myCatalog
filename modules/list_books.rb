module BookList
  def list_all_books
    if @books.length.zero?
      puts 'Database is empty'
    else
      puts 'List of all Books: '
      @books.each_with_index do |book, index|
        puts "#{index}: [Book] Id: #{book.id}, Publish Date: #{book.publish_date}, Publisher: #{book.publisher},
           Cover state: #{book.cover_state}, Label: Title: #{book.label.title}, Color: #{book.label.color}"
        # label(book)
      end
    end
  end

  # def label(item)
  #   puts "Label : Id: #{item.label.id}, Title: #{item.label.title} Color: #{item.label.color}" if item.label
  # end
end
