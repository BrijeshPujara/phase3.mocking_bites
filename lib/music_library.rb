class MusicLibrary
    def initialize
      # ...

      @track_list = []
    end
  
    def add(track) # track is an instance of Track
      # Track gets added to the library
      # Returns nothing

      @track_list << track
    end
  
    def all
      # Returns a list of track objects
      @track_list
    end
    
    def search(keyword) # keyword is a string
      # Returns a list of tracks that match the keyword

      @track_list.select { |track| track.matches?(keyword)}
      
    end
  end