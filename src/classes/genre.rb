class Genre
  attr_accessor :name, :genre
  attr_reader :id, :items

  def initialize(name)
    @name = name
    @items = []
    @id = rand(0..500)
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    @items.genre = self
  end
end
