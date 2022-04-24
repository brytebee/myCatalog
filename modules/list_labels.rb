module LabelList
  include BookList
  def list_all_labels
    if @labels.length.zero?
      puts 'Database is empty'
    else
      puts 'List of Labels: '
      @labels.each_with_index do |label, index|
        puts "#{index}: Label:  Title: #{label.title}, Color: #{label.color}, Id: #{label.id} "
      end
    end
  end
end
