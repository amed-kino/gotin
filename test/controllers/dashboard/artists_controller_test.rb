require 'test_helper'

class Dashboard::ArtistsControllerTest < ActionDispatch::IntegrationTest
  test "Create Artist" do
    post artists_url, params: {artist: {name: ''}}
    assert_response :success
    assert_equal flash[:alert], I18n.t('dashboard.artists.create.alert')
    post artists_url, params: {artist: {name: 'name'}}
    assert_redirected_to artist_path(Artist.last)
    assert_equal flash[:notice], I18n.t('dashboard.artists.create.notice')
  end
  test "Update Artist" do
    artist = artists(:one)
    put artist_url(artist.id), params: {artist: {name: ''}}
    assert_equal flash[:alert], I18n.t('dashboard.artists.update.alert')
    assert_response :success

    put artist_url(artist.id), params: {artist: {name: 'Updated Artist'}}
    assert_redirected_to artist_path(artist.id)
    assert_equal flash[:notice], I18n.t('dashboard.artists.update.notice')
    assert_equal Artist.find(artist.id).name, 'Updated Artist'
  end

  test "Delete Artist" do
    artist = artists(:two)
    delete artist_url(artist.id), params: {}
    assert_redirected_to artists_path
  end

  test "Show Artist" do
    artist = artists(:three)
    get artist_url(artist.id), params: {}
    assert_equal controller.instance_variable_get(:@artist), artist
  end
end
