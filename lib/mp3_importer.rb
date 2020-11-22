require 'pry'
require_relative "../lib/artist.rb"
require_relative "../lib/song.rb"

class MP3Importer

    attr_accessor :path

    @@all = []
    def initialize(file_path)
        @path = file_path 
        @@all << self 
        # binding.pry
    end 

    def files
        file = Dir[@path+"/*"]
        file = file.map {|file| File.basename(file)}
    end 

    def import
        files.each {|filename| Song.new_by_filename(filename)}
    end 

    def self.all 
        @@all 
    end 

end 

artist = Artist.new('Michael Jackson')

dirty_diana = Song.new("Dirty Diana")
billie_jean = Song.new("Billie Jean")
piano_man = Song.new("Piano Man")

artist.add_song(dirty_diana)
artist.add_song(billie_jean) 

piano_man.artist_name = "Billie Joel" 
# binding.pry
0