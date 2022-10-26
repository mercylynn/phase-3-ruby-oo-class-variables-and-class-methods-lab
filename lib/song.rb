class Song
    attr_accessor :name, :artist , :genre

    def initialize (name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end


    @@count = 0
    @@genres = []
    @@artists = []

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

p ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
p song2 = Song.new("Being a woman","carolina jones","country")
p song2 = Song.new("What a View","carolina jones","country")
p ninety_nine_problems.artist
p ninety_nine_problems.genre
p Song.count
p Song.artists
p Song.genres
p Song.genre_count
p Song.artist_count
