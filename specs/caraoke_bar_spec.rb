require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../caraoke_bar' )
require_relative( '../room' )


class TestCaraokeBar < MiniTest::Test

    def setup
        @caraoke_bar = CaraokeBar.new("Sunset Sirens")

        @room1 = Room.new("1", 12,["Janine", "Rowan", "Mike", "Mimi"])
        @room2 = Room.new("2", 20,  [])
    end

    def test_caraoke_bar_can_have_name
        (assert_equal("Sunset Sirens", @caraoke_bar.name))
    end

    def test_caraoke_bar_can_have_no_rooms
        assert_equal([], @caraoke_bar.rooms)
    end

    def test_caraoke_bar_can_count_rooms
        assert_equal(0, @caraoke_bar.count_rooms)
    end

    def test_caraoke_bar_can_have_rooms
        @caraoke_bar.add_room(@room1)
        @caraoke_bar.add_room(@room1)
        assert_equal(2, @caraoke_bar.count_rooms)
    end

    def test_caraoke_bar_can_have_till
        assert_equal(50, @caraoke_bar.till)
    end

end