class Review

    attr_accessor :viewer, :movie, :rating
    @@all = []

    def intiialize(viewer, movie, rating=nil)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end


end
