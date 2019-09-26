class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.movie == self}
  end

  def viewers
    x = Review.all.select {|review| review.movie == self}
    x.map {|review| review.viewers}
  end

  def average_rating
    x = self.reviews.map {|review| review.rating}
    x.sum/x.count
  end

  def self.highest_rated
    x = self.reviews.map {|review| review.rating}
    x.max {|a, b| a.rating <=> b.rating}
  end


end
