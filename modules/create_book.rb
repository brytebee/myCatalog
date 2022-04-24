module CreateBook
  def add_book
    puts 'Create a new book'
    print 'Enter publisher of book: '
    publisher = gets.chomp
    print 'Enter the cover state of the book: : '
    cover_state = gets.chomp
    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp
    puts 'Book  created successfully.'

    print 'Create new label: (y), or use already created label: (n) [Y/N] '
    input = gets.chomp.downcase == 'y' || false
    if input
      new_label = create_label
      @books << Book.new(publish_date, publisher, cover_state, new_label)
    elsif @labels.length.zero?
      puts 'Database is empty. Create new label'
      new_label.add_item(@books[-1])
    else
      puts 'Select a Label by index:'
      list_all_labels
      label_index = gets.chomp.to_i
      @labels[label_index].add_item(@books[-1])
      puts 'book has been added to label'
    end
    write_book
  end

  def create_label
    print 'Enter label title: '
    title = gets.chomp
    print 'Enter label color: '
    color = gets.chomp
    new_label = Label.new(title, color)
    @labels << new_label
    write_label
    puts 'Label has been added successfully'
    new_label
  end
end
