require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../room' )
require_relative( '../guest' )
require_relative( '../song' )


class TestRoom < MiniTest::Test

    # A room has an ID(room number), capacity and occupancy

    def setup
        @room1 = Room.new("1", 12,["Janine", "Rowan", "Mike", "Mimi"])
        @room2 = Room.new("2", 20,  [])

        @guest1 = Guest.new("Janine", 100, "Don't stop me now")
        @guest2 = Guest.new("Jason", 50, "Believer")

        @song1 = Song.new("Coldplay", "Clocks")
        @song2 = Song.new("Imagine Dragons", "Believer")
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

    def test_guest_can_check_in
        @room2.check_in(@guest1)
        assert_equal(1, @room2.occupants.count)
    end

    def test_guest_can_check_out
        @room2.check_in(@guest1)
        @room2.check_in(@guest2)
        @room2.check_out(@guest1)
        assert_equal(1, @room2.occupants.count)
    end

    def test_room_can_have_playlist__no_songs_on_list
        assert_equal([], @room1.playlist)
    end

    def test_room_can_have_playlist__no_songs_on_list
      assert_equal(0, @room1.number_of_songs)  
    end

    def test_add_song_to_playlist
        @room1.add_song(@song1)
        @room1.add_song(@song2)
        assert_equal(2, @room1.number_of_songs)
    end

end