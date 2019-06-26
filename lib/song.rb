
class Song

    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
 
  attr_accessor :name, :artist, :genre
 
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@all << self
    @@artists << @artist
    @@genres << @genre

  end
 
  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.group_by(&:itself).transform_values(&:count)
  end

  def self.artist_count
    @@artists.group_by(&:itself).transform_values(&:count)
  end


end
