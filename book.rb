class Book
  attr_accessor :title, :author, :rentals

  # we can have a book and give it many rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, person, self)
  end
end
