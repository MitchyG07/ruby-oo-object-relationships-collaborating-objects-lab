require 'pry'

class Artist 

    attr_accessor :name

    @@all = [] 
    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def song
        song.artist = self
    end 

    def songs
        Song.all.select{|song| song.artist == self}
    end 

    def add_song(song_name)
        song_name.artist = self 
    end 

    def self.find_or_create_by_name(name)
        artist = Artist.all.find {|artist| artist.name == name}
        if artist 
            artist 
        else             
            Artist.new(name) 
        end 
    end 

    def print_songs
        puts songs.map {|song| song.name}
    end 

end 
