require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publish_date, publisher, cover_state)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end

  def to_json(*args)
    {
      'book' => self.class.name,
      'publisher' => @publisher,
      'publish_date' => @publish_date,
      'cover_state' => @cover_state
    }.to_json(*args)
  end
end
