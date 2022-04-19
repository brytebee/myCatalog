require './src/classes/genre'
require './src/classes/item'
require 'date'

describe Genre do
  context 'create an instance of Genre class' do
    gen = Genre.new('Fiction')
    today = Date.today
    twelve_years = Date.new(today.year - 12, today.month, today.day)
    item = Item.new(twelve_years, true)
    item2 = Item.new(today, true)
    p gen

    it 'should return an instance of Genre class' do
      expect(gen.instance_of?(Genre)).to be(true)
    end

    it 'return the length of items' do
      expect(gen.items.length).to be(0)
    end
    
    # it 'return the length of items' do
    #   gen.add_item=(item)
    #   expect(gen.items.length).to eq(1)
    # end

    it 'instance of name' do
      instance_property = gen.name
      expect(instance_property).to eq('Fiction')
    end
    
    it 'instance of name' do
      instance_property = gen.id
      expect(instance_property).not_to eq(-100)
    end
    
    it 'instance of name' do
      instance_property = gen.items
      expect(instance_property).to eq([])
    end

    it 'Add item' do
      f = gen.add_item=(item)
      p f
      expect(gen.items.length).to eq(1)
    end

    it 'return the length of items' do
       f = gen.add_item=(item2)
      p f
      expect(gen.items.length).to be(2)
    end
  end
end
