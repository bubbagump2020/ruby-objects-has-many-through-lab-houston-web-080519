class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(artist_name)
    @name = artist_name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.each do |artist|
    end
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def genres
    result = []
    Genre.all.select do |song|
      result << song.name
    end
  end
  
  
end