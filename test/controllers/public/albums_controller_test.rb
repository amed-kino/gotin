require 'test_helper'

class Public::AlbumsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_albums_show_url
    assert_response :success
  end

end
