module LabelJson
  # rubocop:disable Style/GuardClause
  def read_labels
    if File.exist?('../storage/labels.json')
      JSON.parse(File.read('../storage/labels.json')).map do |label|
        new_label = add_label(label)
        @labels << new_label
      end
    end
  end

  # rubocop:enable Style/GuardClause
  def add_label(label)
    label_instance = Label.new(label['title'], label['color'])
    label_instance.id = label['id'].to_i
    label_instance
  end
end
