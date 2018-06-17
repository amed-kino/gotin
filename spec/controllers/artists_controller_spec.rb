require "rails_helper"

RSpec.describe Dashboard::ArtistsController do
  describe 'create an artist' do
    it 'returns false when the name is not existed' do
      post 'create', params: { artist: {name: ''} }
      expect(response.status).to eq(200)
      expect(response).to render_template(:new)
      expect(controller.flash[:alert]).to eq(I18n.t('dashboard.artists.create.alert'))
    end
    it 'returns true and save the artist' do
      post 'create', params: { artist: {name: 'Artist Name'} }
      expect(response.status).to eq(302)
      expect(response).to redirect_to(artist_path(Artist.last.id))
    end
  end

  describe 'add an album as to an artist' do
    it 'fails on empty params' do
      post 'add_album', params: {}
      expect(response).to redirect_to(:dashboard)
      expect(controller.flash[:alert]).to eq(I18n.t('dashboard.artists.add_album.alert_no_params'))
    end

    it 'fails on existed album' do
      album = FactoryGirl.create(:album)
      artist = FactoryGirl.create(:artist, albums: album)
      byebug

      # artist = Artist.create({name: 'Artist'})
    end
  end
end
