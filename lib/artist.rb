require 'pry'
class Artist 

   

    attr_accessor :name 
    @@song_count= 0

    def initialize(name)
        @name = name 
        @songs = []
    end 

    # def songs(song)
    #       @songs 
    # end 

    def songs
        Song.all.select {|song| song.artist == self}
      end

    def add_song(song)
      @@song_count += 1 
       @songs << song 
       song.artist = self 
        
    end 

    def add_song_by_name(song_name)
        @@song_count += 1 
        song = Song.new(song_name)
        self.add_song(song)
       
        
    end 

    def self.song_count
         @@song_count
         #returns the umber of counted songs
    end 
   
    #binding.pry

end 


