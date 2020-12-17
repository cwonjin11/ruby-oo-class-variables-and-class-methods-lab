class Song
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end
   
    @@count = 0
    def self.count
        @@count
    end

    @@artists = []
    def self.artists
        @@artists.uniq!
    end

    @@genres = []
    def self.genres
        @@genres.uniq!
    end
    
    def self.genre_count
        @@genre_count = {}
        @@genres.group_by(&:itself).each {|k,v| @@genre_count[k] = v.count}

        return @@genre_count
    end
    
    def self.artist_count
        @@artist_count = {}
        @@artists.group_by(&:itself).each {|k,v| @@artist_count[k] = v.count}

        return @@artist_count
    end
end