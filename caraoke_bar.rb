class CaraokeBar
    attr_reader :name, :till, :rooms

    def initialize(name)
        @name = name
        @rooms = []
        @till = 50 # Till starts with a £50 float each day
        
    end

    def count_rooms()
        return @rooms.count
    end

    def add_room(room)
        @rooms << (room)
    end

    def pay_fee(guest) # Guest pays the entry fee
        @till += @entry_fee
        guest.wallet -= @entry_fee
    end


end