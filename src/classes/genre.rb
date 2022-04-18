class Genre
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name)
    @name = name
    @items = []
    @id = rand(0..500)
  end

  def add_item(item)
    @item << item unless @item.include?(item)
    items.genre = self
  end
end
