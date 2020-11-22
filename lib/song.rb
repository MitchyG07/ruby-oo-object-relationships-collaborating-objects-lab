require 'pry' 

class Song

    attr_accessor :name, :artist

    @@all = []
    def initialize(name)
        @name = name
        @@all << self 
    end 

    # def artist
    #     self.artist = name
    #     Artist.new(name)
    # end 

    def self.new_by_filename(filename)
        song = self.new
        song.title = filename.split(" - ")[1]
        song
    end 
    def self.all
        @@all
    end 

end 



