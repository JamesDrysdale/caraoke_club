class Room

    attr_reader :id, :capacity, :occupants 

    def initialize(id, capacity, occupants)
        @id = id # Room number
        @capacity = capacity
        @occupants = occupants # Array of guests who are in the room
    end

    def check_in(guest)
        @occupants << guest
    end

    def check_out(guest)
        @occupants.delete(guest) if(@occupants.include?(guest))
    end

end