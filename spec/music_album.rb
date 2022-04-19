require './classes/music_album'

describe MusicAlbum do
  context 'tests the Music Album class' do
    before(:all) do
      gen = Genre.new('Fiction')
      today = Date.today
      twelve_years = Date.new(today.year - 12, today.month, today.day)
      item = Item.new(twelve_years, true)
      item2 = Item.new(today, true)
      p gen
    end

    
  end
end