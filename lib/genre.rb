class Genre

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
        Song.all.select { |s| s.genre == self}
    end

    def artists
        self.songs.map { |s| s.artist }
    end


end
