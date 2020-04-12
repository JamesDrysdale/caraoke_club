class Room

    attr_reader :id, :capacity, :occupants, :playlist, :entry_fee 

    def initialize(id, capacity, occupants, entry_fee)
        @id = id # Room number
        @capacity = capacity # Total number of people each room can hold
        @occupants = occupants # Array of guests who are in the room
        @playlist = []
        @entry_fee = entry_fee # Per hour
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

    def add_song(song)
        @playlist.push(song) if(@playlist.include?(song) == false)
        return @playlist.to_s
    end

end