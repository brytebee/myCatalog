require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at
  attr_reader :id, :published_date

  def initialize(multiplayer, last_played_at, published_date)
    super(published_date)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end

  private

  def can_be_archived?
    day_difference = Date.now - @last_played_at.year
    super && day_difference > 712
  end
end
