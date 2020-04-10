class Guest
    attr_reader :name, :wallet, :fav_song

    def initialize(name, wallet, fav_song)
        @name = name
        @wallet = wallet # How much cash the customer has
        @fav_song = fav_song
    end


end