class Dashboard::DashboardController < ApplicationController
  layout 'dashboard'

  def index
    @artists = Artist.all
    @albums = Album.all
  end
end
