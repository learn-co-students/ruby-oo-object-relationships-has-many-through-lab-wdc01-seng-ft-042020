class Genre

    attr_reader :name, :songs, :artists
    @@all = []

    def initialize(name)
        @name = name
        @artists = []
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs=(song)
        @songs << song
    end

    def artists=(artist)
        @artists << artist
    end
end