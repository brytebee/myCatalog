require_relative 'item'
require 'date'

class MusicAlbum < Item
  attr_accessor :on_spotify, :published_date, :items

  def initialize(published_date, on_spotify)
    @on_spotify = on_spotify
    super(published_date)
  end

  private

  def can_be_archived?()
    super() && @on_spotify = true
  end
end

today = Date.today.to_s
# today = Date.today

ita = Item.new(today, false)

alb = MusicAlbum.new(today, true, false)
p alb.published_date
p ita.published_date
