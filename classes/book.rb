require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publish_date, publisher, cover_state, label)
    super(publish_date)
    @id = id
    @publisher = publisher
    @cover_state = cover_state
    add_label(label)
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end

  def to_json(*args)
    {
      'book' => self.class.name,
      'id' => @id,
      'publisher' => @publisher,
      'publish_date' => @publish_date,
      'cover_state' => @cover_state,
      'label_title' => label.title,
      'label_color' => label.color
    }.to_json(*args)
  end
end
