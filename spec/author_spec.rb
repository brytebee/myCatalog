require_relative '../classes/author'

describe 'Author Class' do
  context 'With valid input to #new' do
    before :each do
      @author = Author.new('Alick', 'Nyirenda')
    end

    it 'instance created should be an author Author object that has a class of Author' do
      instance_class = @author.class

      expect(instance_class).to be Author
    end

    it 'instance created should have a "first_name" & "last_name" isntance property as what is given in initialiser' do
      instance_property_first = @author.first_name
      instance_property_last = @author.last_name

      expect(instance_property_first).to eq 'Alick'
      expect(instance_property_last).to eq 'Nyirenda'
    end
  end

  context 'With valid input to "add_item" function' do
    before :each do
      @author = Author.new('Alick', 'Nyirenda')
      stub_item = double('Item', published_date: '10/10/20', id: 1234, archived: false)
      allow(stub_item).to receive(:author=) { @author }
      @author.add_item(stub_item)
    end

    it 'should add an object to the class instance property "item" array' do
      instance_property_item_length = @author.items.length

      expect(instance_property_item_length).to eq 1
    end

    it 'should add an object to the "item" array with a published_date as in initialiser' do
      instance_property_published_date = @author.items[0].published_date

      expect(instance_property_published_date).to eq '10/10/20'
    end
  end
end
