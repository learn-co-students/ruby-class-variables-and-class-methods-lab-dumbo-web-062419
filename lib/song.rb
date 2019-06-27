class Song
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
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
        hash_genres = {}
        count = 0
        @@genres.each do |genre|
            if hash_genres[genre] != nil
                hash_genres[genre] = count += 1
            else
                count = 0
                hash_genres[genre] = count += 1
            end
        end
        return hash_genres
    end

    def self.artist_count
        hash_artists = {}
        count = 0
        @@artists.each do |artist|
            if hash_artists[artist] != nil
                hash_artists[artist] = count += 1
            else
                count = 0
                hash_artists[artist] = count += 1
            end
        end
        return hash_artists
    end
end