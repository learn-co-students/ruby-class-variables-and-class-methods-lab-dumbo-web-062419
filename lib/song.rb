class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

    def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1
    @@genres << genre 
    @@artists << artist
    end

    def self.count 
        @@count 
    end
    
    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq 
    end

    def self.genre_count 
        names_of_genres = {}
        @@genres.each do |name_each_genre|
            if names_of_genres.num_song += 1
            else
                names_of_genres.num_song = 1
            end
        end
        num_song
    end

    def self.artist_count
        num_of_artists = {}
    end

end
