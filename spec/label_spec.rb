require_relative '../classes/item'
require_relative '../classes/label'
require 'date'

describe Label do
  context 'Test for Label class' do
    before(:all) do
      @item = Item.new('2022-04-15')
      @label = Label.new('someTitle', 'red')
    end

    it 'if is instance of class' do
      expect(@label).to be_instance_of(Label)
    end

    it 'if is right color' do
      expect(@label.color).to eql 'red'
    end

    it 'if is right title' do
      expect(@label.title).to eql 'someTitle'
    end

    it 'if method add item works' do
      @label.add_item(@item)
      expect(@label.items).to include(@item)
    end
  end
end
