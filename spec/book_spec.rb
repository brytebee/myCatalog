require_relative '../classes/book'
require_relative '../classes/item'

describe Book do
  context 'Test for the Book Class' do
    before(:each) do
      @book = Book.new('2010-05-16', 'John', 'good')
    end

    it 'if is instance of class' do
      expect(@book).to be_instance_of(Book)
    end

    it 'if object is instance of class Item' do
      expect(@book).to be_kind_of Item
    end

    it 'if is right publisher' do
      expect(@book.publisher).to eql 'John'
    end

    it 'if cover_state is correct' do
      expect(@book.cover_state).to eql 'good'
    end

    it 'if can be archived' do
      expect(@book.can_be_archived?).to be true
    end
  end
end
