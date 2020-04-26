class Artist

    attr_reader :name, :songs, :genres
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @genres = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        @songs
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    
    def songs=(song)
        @songs << song
    end

    def genres=(genre)
        @genres << genre
    end
end
