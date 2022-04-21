require 'date'

class Item
  attr_accessor :publish_date, :genre, :author, :source, :label
  attr_reader :id

  def initialize(publish_date, archived: false)
    @id = rand(1..500)
    @publish_date = publish_date
    @archived = archived
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
  end

  def add_label(label)
    @label = label
  end

  def move_to_archive()
    @archived = can_be_archived?
  end

  private

  def can_be_archived?()
    current_year = Date.today.year
    current_year - Date.parse(@publish_date).year > 10
  end
end
