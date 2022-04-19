module CreateBook
  def add_book
    puts 'Create a new book'
    print 'Enter publisher of book: '
    publisher = gets.chomp
    print 'Enter the cover state of the book: : '
    cover_state = gets.chomp
    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp
    @books << Book.new(publish_date, publisher, cover_state)
    puts 'Book  created successfully.'

    print 'Create new label: (y), or use already created label: (n) [Y/N] '
    input = gets.chomp.downcase == 'y' || false
    if input
      create_label(@books[-1])
    else
      puts 'Select a Label by index:'
      list_all_labels
      label_index = gets.chomp.to_i
      @labels[label_index].add_item(@books[-1])
      puts 'book has been added to label'
    end
  end

  def create_label(item = nil)
    print 'Enter label title: '
    title = gets.chomp
    print 'Enter label color: '
    color = gets.chomp
    @labels << Label.new(title, color) if item.nil?
    label = Label.new(title, color)
    label.add_item(item)
    @labels << label
    puts 'Label has been added successfully'
  end
end
