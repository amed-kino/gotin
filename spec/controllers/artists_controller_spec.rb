require "rails_helper"

RSpec.describe Dashboard::ArtistsController do
  # describe 'create an artist' do
  #   it 'returns false when the name is not existed' do
  #     post 'create', params: { artist: {name: ''} }
  #     expect(response.status).to eq(200)
  #     expect(response).to render_template(:new)
  #     expect(controller.flash[:alert]).to eq(I18n.t('dashboard.artists.create.alert'))
  #   end
  #   it 'returns true and save the artist' do
  #     post 'create', params: { artist: {name: 'Artist Name'} }
  #     expect(response.status).to eq(302)
  #     expect(response).to redirect_to(artist_path(Artist.last.id))
  #   end
  # end

  describe 'add an album as to an artist' do
    # artist = Artist.create({name: 'Artist'})
    # album = Album.create({title: 'Album'})
    it 'refuses to add empty album or artists' do
      post 'add_album'
    end
  end
end
