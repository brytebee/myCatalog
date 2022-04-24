require_relative 'item'

class Label
  attr_accessor :title, :color
  attr_reader :id, :items

  def initialize(title, color, id = rand(1..1000))
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end

  def to_json(*args)
    {
      'label' => self.class.name,
      'id' => @id,
      'title' => @title,
      'color' => @color,
    }.to_json(*args)
  end
end
