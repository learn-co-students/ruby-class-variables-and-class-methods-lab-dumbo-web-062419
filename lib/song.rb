require 'pry.rb'

class Song

    attr_accessor :name, :artist, :genre

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
        gcount = {}
        @@genres.each do |genre|
            if gcount[genre]
                gcount[genre] += 1
            else
                gcount[genre] = 1
            end
        end
        gcount
    end



    def self.artist_count
        acount = {}
        @@artists.each do |artist|
            if acount[artist]
                acount[artist] += 1
            else
                acount[artist] = 1
            end
        end
        acount
    end

end

blackened = Song.new("Blackened", "Metallica", "old school thrash metal")
iesous = Song.new("Iesous", "Bloodbath", "old school death metal")
maniacal = Song.new("Maniacal", "Cannibal Corpse", "old school death metal")
treasonous = Song.new("Treasonous", "Bloodbath", "old school death metal")
unnatural = Song.new("Unnatural", "Cannibal Corpse", "old school death metal")
battery = Song.new("Battery", "Metallica", "old school thrash metal")
fool = Song.new("The Fool", "Fleshgod Apocalypse", "death metal")
anubis = Song.new("Anubis", "Septic Flesh", "death metal")



binding.pry