class CaraokeBar
    attr_reader :name, :rooms

    def initialize(name)
        @name = name
        @rooms = []
    end

    def count_rooms()
        return @rooms.count
    end

end