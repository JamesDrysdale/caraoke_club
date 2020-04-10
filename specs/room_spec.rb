require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../room' )


class TestRoom < MiniTest::Test

    # A room has an ID(room number), capacity and occupancy

    def setup
        @room1 = Room.new("1", 12,["Janine", "Rowan", "Mike", "Mimi"])
        @room2 = Room.new("2", 20,  [])
    end

    def test_room_can_have_id()
        assert_equal("1", @room1.id)
    end

    def test_room_can_have_max_capacity
        assert_equal(20, @room2.capacity)
    end

    def test_room_can_have_occupants
        assert_equal(4, @room1.occupants.count)
    end

    def test_room_can_have_occupants__no_occupants
        assert_equal(0, @room2.occupants.count)
    end

end