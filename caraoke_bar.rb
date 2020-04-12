class CaraokeBar
    attr_reader :name, :till, :rooms, :entry_fee

    def initialize(name)
        @name = name
        @rooms = []
        @till = 50 # Till starts with a £50 float each day
        @entry_fee = 30 # Per hour
    end

    def count_rooms()
        return @rooms.count
    end

    def add_room(room)
        @rooms << (room)
    end

end