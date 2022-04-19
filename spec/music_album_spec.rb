require './classes/music_album'
require 'date'

describe MusicAlbum do
  context 'testing the MusicAlbum class' do
    before(:each) do
      @today = Date.today
      @twelve_years = Date.new(@today.year - 12, @today.month, @today.day)
      @album1 = MusicAlbum.new(@today, false)
      @album2 = MusicAlbum.new(@twelve_years, true)
    end

    it 'should return the MusicAlbum object' do
      expect(@album1.instance_of?(MusicAlbum)).to be(true)
    end

    it 'should use service return true' do
      expect(@album2.instance_of?(MusicAlbum)).to be(true)
    end

    it 'object is a type of class Item' do
      expect(@album2).to be_kind_of Item
    end

    it 'instance of publish date property' do
      instance_property = @album2.publish_date
      expect(instance_property).to be(@twelve_years)
    end

    it 'instance of on spotify property' do
      instance_property = @album1.on_spotify
      expect(instance_property).to eq(false)
    end
  end
end
