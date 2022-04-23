module LabelJson
  def write_label
    File.write('./storage/labels.json', @labels.to_json)
  end

  def read_labels
    return unless File.exist?('./storage/labels.json')

    JSON.parse(File.read('./storage/labels.json')).map do |label|
      new_label = add_label(label)
      @labels << new_label
    end
  end

  def add_label(label)
    Label.new(label['title'], label['color'], label['id'])
  end
end
