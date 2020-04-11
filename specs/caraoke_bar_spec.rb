require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../caraoke_bar' )


class TestCaraokeBar < MiniTest::Test

    def setup
        @caraoke_bar = CaraokeBar.new("Sunset Sirens")
    end

    def test_caraoke_bar_can_have_name
        (assert_equal("Sunset Sirens", @caraoke_bar.name))
    end


end