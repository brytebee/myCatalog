require './src/classes/music_album'
require 'date'

describe MusicAlbum do
  context 'testing the MusicAlbum class' do
    before(:each) do
      @today = Date.today
      @twelve_years = Date.new(@today.year - 12, @today.month, @today.day)
      @album1 = MusicAlbum.new('@today', 'gate', 'false')
      @album2 = MusicAlbum.new('@twelve_years', 'true')
    end

    it 'should take 3 parameters and return the MusicAlbum object' do
      expect(@album1.instance_of?(MusicAlbum)).to be(true)
      expect(@album2.instance_of?(MusicAlbum)).to be(true)
    end

    puts @twelve_years

    # it 'should use service return true' do
    #   expect(@teacher1.can_use_services?).to be(true)
    # end
  end
end