class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(genre_name)
    @name = genre_name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    result = []
    Song.all.each do |song|
      result << song.genre
    end
  end
  
  def artists
    result = []
    Artist.all.each do |artist|
      result << artist.name
    end
  end
  
end