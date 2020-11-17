class Song 


    @@all = []

    attr_accessor :name,  :artist 

    def initialize(name)
        @name = name
      
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def artist_name 
        if self.artist 
            self.artist.name 
        else 
            nil 
        end 
    
        #if self.artit == true, return self.artist.name. Else, if its false, return nil.

    end 

    


end 