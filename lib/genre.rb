class Genre

  attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def songs
  @songs
end

def self.all
  @@all
end

def self.destroy_all
  @@all = []
end

def save
  @@all << self
end

def self.create(name)
  genre = Genre.new(name)
  @@all << genre
  genre
end

end
