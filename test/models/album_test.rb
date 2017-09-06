require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "Creating a new album" do

    album = Album.new
    assert album.invalid?
    assert album.errors[:title].any?

    album.title = "_"
    assert album.invalid?
    assert album.errors[:title].any?

    album.title = "Long title"*9
    assert album.invalid?
    assert album.errors[:title].any?

    album.title = "Türkçe عربي"
    byebug
    assert album.invalid?
    assert album.errors[:title].any?

    album.title = 'Têlînaz Rojanî Xoşewîstî'
    assert album.valid?

    album.save
    assert(album.uid=~/^[a-zA-Z|1-9]{9}+$/)
  end
end
