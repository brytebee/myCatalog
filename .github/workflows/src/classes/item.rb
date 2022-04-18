require 'date'

class Item
  attr_accessor :archived, :published_date
  attr_reader :genre, :label, :author

  def initialize(id = rand(0..500), published_date, archived)
    @id = id
    @published_date = published_date
    @archived = archived
  end

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end
  
  def move_to_archive()
    @archived = true if can_be_archived?
  end

  private
  def can_be_archived?()
    today = Date.today
    10_years_ago = Date.new(today.year - 10, today.month, today.day)

    @published_date < 10_years_ago
  end
end
