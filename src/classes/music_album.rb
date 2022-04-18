class MusicAlbum
  attr_accessor :on_spotify

  def initialize(on_spotify)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?()
    super() && @on_spotify
  end
end