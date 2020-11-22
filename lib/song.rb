require 'pry' 

class Song

    attr_accessor :name, :artist, :artist_name

    @@all = []
    def initialize(name)
        @name = name
        @artist = artist
        @@all << self 
    end 

    def self.new_by_filename(filename)
        song = filename.split(" - ")[1]
        artist = filename.split(" - ")[0]
        song = Song.new(song)
        song.artist = Artist.new(artist)
        song
    end 

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end 

    def self.all
        @@all
    end 

end 



