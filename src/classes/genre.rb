class Genre
  attr_accessor :name
  attr_reader :id, :items
  
  def initialize(name, items, id = rand(0..500))
    @name = name
    @items = items
    @id = id
  end

  def add_item(item)
    @item << item
    items.genre = self
  end
end