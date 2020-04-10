require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../room' )


class TestRoom < MiniTest::Test

    # A room has an ID(room number), capacity and occupancy

    def setup
        @room1 = Room.new("1", 12, 20)
        @room2 = Room.new("2", 20, 20)
    end

    def test_room_id()
        assert_equal("1", @room1.name)
    end


end