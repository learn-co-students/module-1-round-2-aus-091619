
class Review
    attr_reader :viewer, :movie, :rating
    
    # CLASS METHODS

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        @@all << self
    end

    def self.all
        @@all
        end


#INSTANCE METHODS

def viewer 
    Review.all.select{|review| review.viewer == self}
  end
  #pseudocode: select all reviews. For each of those review, return the viewer object associated with the viewer calling it. 

  def movie 
    Review.all.select{|review| review.movie == self}
  end

end

