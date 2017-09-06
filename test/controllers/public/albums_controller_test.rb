require 'test_helper'

class Public::AlbumsControllerTest < ActionDispatch::IntegrationTest

  test "should get show" do
    byebug
    artist = Artist.create(artists(:one))
    get public_albums_show_url(artist.uid)
    assert_response :success
  end

end
