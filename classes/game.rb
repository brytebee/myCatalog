require_relative './item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at
  attr_reader :id, :publish_date

  def initialize(multiplayer, last_played_at, publish_date, author)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
    add_author(author)
    author.add_item(self)
  end

  private

  def can_be_archived?
    day_difference = Date.today.year - @last_played_at.year
    super && day_difference > 2
  end
end
