require './src/classes/genre'
require './src/classes/item'
require 'date'

describe Genre do
  context 'create an instance of Genre class' do
    gen = Genre.new('Fiction')
    today = Date.today
    twelve_years = Date.new(today.year - 12, today.month, today.day)
    item = Item.new(twelve_years, true)

    it 'should return an instance of Genre class' do
      expect(gen.instance_of?(Genre)).to be(true)
    end

    it 'return the length of items' do
      expect(gen.items.length).to be(0)
    end
    
    # it 'return the length of items' do
    #   gen.add_item('Science')
    #   expect(gen.items.length).to be(1)
    # end
  end
end

describe Genre do
  context 'when instantiated' do
    it 'with name should create a Rental' do
      genre = Genre.new('Science')
      date = Time.now.strftime('%F')
      itema = Item.new(date, false)
      genre.add_item(itema)

      expect(genre.class).to eq Genre
      expect(genre.items.length).to be >= 1
    end
  end
end

# describe Rental do
#   context 'testing the rental class' do
#     before(:each) do
#       @person = Person.new(23, 'Joe')
#       @book = Book.new('Alchemist', 'Chloe')
#       @book2 = Book.new('Rich Dad', 'Kiyosaki')
#       @book3 = Book.new('Think & Grow Rich', 'Napoleon Hill')
#       @date = Time.now.strftime('%F')
#       @rental = Rental.new(@date, @book, @person)
#       @rental2 = Rental.new(@date, @book2, @person)
#     end

#     it 'has the class of Rental' do
#       expect(@rental.instance_of?(Rental)) == true
#     end

#     it 'has the class of Rental' do
#       expect(@person.rentals.length).to be(2)
#     end

#     it 'has the class of Rental' do
#       expect(@rental.date).to eq(@date)
#     end

#     it 'has the class of Rental' do
#       @rental3 = Rental.new(@date, @book3, @person)
#       expect(@person.rentals.length).to be(3)
#     end
#   end
# end

