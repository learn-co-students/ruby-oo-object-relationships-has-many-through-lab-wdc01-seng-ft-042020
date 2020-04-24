class Artist

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # Class Methods
    def self.all
        @@all
    end

    # Instance Methods

    def songs
        Song.all.select { |s| s.artist == self }
    end

    def new_song(name, genre)
        Song.new(name, self, genre)

    end

    def genres()
        self.songs.map { |s| s.genre }
    end





end
