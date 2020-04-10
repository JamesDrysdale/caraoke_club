class Room

    attr_reader :id, :capacity 

    def initialize(id, capacity)
        @id = id # Room number
        @capacity = capacity
    end

end