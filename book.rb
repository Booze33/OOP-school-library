class Book
  attr_accessor :title, :authur

  def initialize(title, authur)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.book = self
  end
end
