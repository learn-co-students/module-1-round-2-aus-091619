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
    Review.all.select{|reviews| reviews.viewer == self}
  end

  def add_review(movie)
    Review.new(self, movie)
  end

  def reviewed_movies
    reviews_array = self.reviews
    reviews_array.map{|reviews| reviews.movie}
  # returns an array of Movie instances reviewed by the Viewer instance.
  end

  def reviewed_movie(movie)
    self.reviews?(movie)
    # a Movie instance is passed in as its only argument;
    # returns true if the Viewer instance already has an association with the Movie instance.
  end

  def rate_movie(movie, rating)
    if self.reviews?(movie rating) == false
      Review.new(self, movie, rating)
#     a Movie instance and a rating are passed in as arguments;
# assigns the rating to the Review instance already associated with this Viewer instance and the passed Movie instance;
# if the Viewer instance and the passed Movie instance are not already associated, this method should create a new Review instance;
# rating should be a number between 1 and 5, other values should not be allowed.
  end
  
end
