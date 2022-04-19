require_relative 'item'

class Label < Book
  attr_accessor :title, :color, :items
  attr_writer :id

  def initialize(title, color)
    super(publish_date, publisher, cover_state)
    @id = Random.rand(1..1000)
    @title = title
    @color = color
    @publish_date = publish_date
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.add_label(self)
  end

  def to_json(*args)
    {
      'label' => self.class.name,
      'title' => @title,
      'color' => @color,
      'items' => @items
    }.to_json(*args)
  end
end
