class Song 
    attr_accessor :name ,:artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = Hash.new(0)


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count +=1
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
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
ninety_nine_problems1 = Song.new("99 Problems", "Jay-Z", "hip")
ninety_nine_problems2 = Song.new("99 Problems", "Jay-Z", "ol")
ninety_nine_problems3 = Song.new("99 Problems", "Jay-Z", "ol")
pp Song.artist_count