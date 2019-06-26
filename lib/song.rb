class Song
    attr_accessor :name, :artist, :genre 

    @@songs = []
    @@artists = []
    @@genres = []
    @@count = 0

    def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 

    @@songs << name 
    @@artists << artist
    @@genres << genre

    @@count += 1
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
        genre_count = {}
        @@genres.each do |genre| 
          if genre_count[genre]
          genre_count[genre] += 1 
          else
          genre_count[genre] = 1
          end
        end
        genre_count
      end

      def self.artist_hash
        artist_hash = {}
        @@artists.each do |artist| 
          if artist_hash[artist]
          artist_hash[artist] += 1 
          else
          artist_hash[artist] = 1
          end
        end
        artist_hash
      end





end