require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative( '../guest' )


class TestGuest < MiniTest::Test

    # A guest should have a name, value of cash in their wallet
    # And a favourite song

    def setup
        @guest1 = Guest.new("Jason", 50, "Believer")
        @guest2 = Guest.new("Janine", 100, "Don't stop me now")
    end

    def test_guest_can_have_name
        assert_equal("Janine", @guest2.name)
    end

    def test_guest_can_have_cash_in_wallet
        assert_equal(50, @guest1.wallet)
    end

    def test_guest_can_have_fav_song
        assert_equal("Believer", @guest1.fav_song)
    end


end