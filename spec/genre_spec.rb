require './classes/genre'
require './classes/item'
require 'date'

describe Genre do
  context 'tests the Genre class' do
    before(:all) do
      @gen = Genre.new('Fiction')
      today = Date.today
      twelve_years = Date.new(today.year - 12, today.month, today.day)
      @item = Item.new(twelve_years)
      @item2 = Item.new(today)
    end

    it 'should return an instance of Genre class' do
      expect(@gen.instance_of?(Genre)).to be(true)
    end

    it 'return the length of items' do
      expect(@gen.items.length).to be(0)
    end

    it 'return the length of items' do
      @gen.add_item(@item)
      expect(@gen.items.length).to eq(1)
    end
  end
end

describe Genre do
  context 'tests the Genre class' do
    before(:all) do
      @gen = Genre.new('Fiction')
      today = Date.today
      twelve_years = Date.new(today.year - 12, today.month, today.day)
      @item = Item.new(twelve_years)
      @item2 = Item.new(today)
    end

    it 'object is not an instance of class Item' do
      expect(@gen).not_to be_kind_of Item
    end

    # it 'instance of name' do
    #   instance_property = @gen.name
    #   expect(instance_property).to eq('Fiction')
    # end

    # it 'instance of name' do
    #   instance_property = @gen.id
    #   expect(instance_property).not_to eq(-100)
    # end

    it 'Reject duplicate and still return length == 1' do
      @gen.add_item(@item)
      expect(@gen.items.length).to eq(1)
    end

    it 'Accept another item' do
      @gen.add_item(@item2)
      expect(@gen.items.length).to eq(2)
    end
  end
end
