require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../song' )


class TestSong < MiniTest::Test

    # Songs should have an artist and title

    def setup
        @song1 = Song.new("Coldplay", "Clocks")
        @song2 = Song.new("Imagine Dragons", "Believer")
    end

    def test_song_can_have_an_artist
        assert_equal("Coldplay", @song1.artist)
    end

end