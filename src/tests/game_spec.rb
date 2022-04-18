require_relative '../classes/game'

describe 'Game Class' do
  before :each do
    @game = Game.new(false, '10/10/2021', '10/10/2010')
    p @game
  end

  context 'With valid input to #new' do
    it 'instance created should be a Game object that has a class of Games' do
      instance_class = @game.class

      expect(instance_class).to be Game
    end

    it 'instance created should have a "multiplayer" isntance property as what is given in initialiser' do
      instance_property = @game.multiplayer

      expect(instance_property).to eq false
    end

    it 'instance created should have a "published_date" instance property as what is given in initialiser' do
      instance_property = @game.published_date

      expect(instance_property).to eq '10/10/2010'
    end

    it 'instance created should have a "last_played_at" instance property that should be a Date object' do
      instance_property_class = @game.last_played_at.class

      expect(instance_property_class).to be Date
    end
  end
end