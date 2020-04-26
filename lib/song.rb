class Song

    attr_reader :name, :genre
    attr_accessor :artist
    @@all = []

    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre
        artist.songs = self
        artist.genres = genre
        genre.songs = self
        genre.artists = artist
        @@all << self
    end

    def self.all
        @@all
    end
end