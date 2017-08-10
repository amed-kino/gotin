require 'test_helper'

class Public::LyricsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_lyrics_show_url
    assert_response :success
  end

end
