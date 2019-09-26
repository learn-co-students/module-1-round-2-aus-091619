class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|x| x.viewer == self}
  end

  def reviewed_movies
    x = Review.all.select {|x| x.viewer == self}
    x.map {|review| review.movie}
  end

  def add_review(movie)
    Review.new(self, movie)
  end

  def reviewed_movie?(movie)
    self.all.select {|x| x.movie == movie}
  end

  def rate_movie(movie,rating)
    x = self.all.select {|x| x.movie == movie}
    

  end

  
end
