require "rails_helper"

RSpec.describe Dashboard::ArtistsController, :type => :controller do
  describe "Create an artist" do
    it "returns false when the name is not existed" do
      post 'create', params: { artist: {name: ''} }
      expect(response.status).to eq(200)
      expect(response).to render_template(:new)
      expect(controller.flash[:alert]).to eq(I18n.t('dashboard.artists.create.alert'))
    end
  end
end
