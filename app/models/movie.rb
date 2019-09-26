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
    Review.all.select{|reviews| reviews.movie == self}
    # returns an array of all the Review instances for the Movie.
  end

  def viewers
    reviews_array = self.reviews 
    reviews_array.map{|reviews| reviews.viewer}
    # returns an array of all of the Viewer instances that reviewed the Movie.
  end

  def average_rating
      arr = self.reviews
      total = arr.map{|reviews| reviews.ratings}.reduce
      total/arr.length

    #     returns the average of all ratings for the Movie instance;
    # to average ratings, add all ratings together and divide by the total number of ratings.
    end

   

    def rating_for_movie
      self.reviews.map{|reviews| reviews.rating}
    end

    def self.highest_rated
      # returns the Movie instance with the highest average rating.
      Movie.all.max{|movie1, movie2| movie1.rating_for_movie.count <==>movie2.rating_for_movie.count}

    end

end
