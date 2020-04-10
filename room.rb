class Room

    attr_reader :id, :capacity, :occupants 

    def initialize(id, capacity, occupants)
        @id = id # Room number
        @capacity = capacity
        @occupants = occupants # Array of guests who are in the room
    end

end