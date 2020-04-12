class CaraokeBar
    attr_reader :name, :till, :rooms

    def initialize(name)
        @name = name
        @till = 50 # Till starts with a £50 float each day
        @rooms = []
    end

    def count_rooms()
        return @rooms.count
    end

    def add_room(room)
        @rooms << (room)
    end

end