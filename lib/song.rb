class Song
    @@all = []
    attr_accessor :name, :artist, :genre
    def initialize(title, artist, genre)
        @name, @artist, @genre = title, artist, genre
        @@all << self
    end


    def self.all
        @@all
    end
end
