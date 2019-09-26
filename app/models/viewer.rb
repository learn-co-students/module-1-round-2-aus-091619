class Viewer
  attr_accessor :username

  # CLASS METHODS
  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  #INSTANCE METHODS



  
end
