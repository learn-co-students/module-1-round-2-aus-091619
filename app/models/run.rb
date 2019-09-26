require_relative "movie"
require_relative "review"
require_relative "viewer"

#INTIALIZATIONS

saul = Viewer.new("scifi_lover")
isabel = Viewer.new("cartoon_lover")
camille = Viewer.new("romance_lover")

mov1 = Movie.new("matrix")
mov2 = Movie.new("star wars")
mov3 = Movie.new("nemo")
mov4 = Movie.new("notebook")

rev1 = Review.new(saul, mov1, 5)
rev2 = Review.new(camille, mov1, 3)
rev3 = Review.new(isabel, mov3, 4)
rev4 = Review.new(saul, mov4, 2)
rev5 = Review.new(camille, mov4, 4)
rev6 = Review.new(saul, mov2, 5)

# TESTS
# p Viewer.all
# p Movie.all
# p Review.all

puts "Review#viewer returns the Viewer instance associated with the Review instance"
p rev1.viewer

# puts "Review#movie returns the Movie instance associated with the Review instance"
# 




