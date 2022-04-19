require './classes/genre'
require './classes/item'
require 'date'

describe Genre do
  context 'tests the Genre class' do
    before(:any) do
      @gen = Genre.new('Fiction')
      today = Date.today
      twelve_years = Date.new(today.year - 12, today.month, today.day)
      item = Item.new(twelve_years)
      item2 = Item.new(today)
      p @gen
    end

    it 'should return an instance of Genre class' do
      expect(@gen.instance_of?(Genre)).to be(true)
    end
  end
end