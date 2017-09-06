require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "Creating a new artist" do

    artist = Artist.new
    assert artist.invalid?
    assert artist.errors[:name].any?

    artist.name = "_"
    assert artist.invalid?
    assert artist.errors[:name].any?

    artist.name = "Long name"*9
    assert artist.invalid?
    assert artist.errors[:name].any?

    artist.name = "zgun ve Ü"
    assert artist.invalid?
    assert artist.errors[:name].any?

    artist.name = 'Eyşe Şan Û Filîtê Quto'
    assert artist.valid?

    artist.save
    assert(artist.uid=~/^[a-zA-Z|1-9]{9}+$/)
  end
end
