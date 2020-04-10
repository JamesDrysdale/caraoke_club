class Room

    attr_reader :id, :capacity, :occupants, :playlist 

    def initialize(id, capacity, occupants)
        @id = id # Room number
        @capacity = capacity
        @occupants = occupants # Array of guests who are in the room
        @playlist = []
    end


    ##  METHODS FOR MANAGING THE GUESTS ##

    def check_in(guest)
        @occupants << guest
    end

    def check_out(guest)
        @occupants.delete(guest) if(@occupants.include?(guest))
    end


    ## METHODS FOR MANAGING THE PLAYLIST ##

    def number_of_songs
        return @playlist.count
    end

end