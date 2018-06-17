class Dashboard::DashboardController < ApplicationController
  layout 'dashboard'

  def index
    @artists = Artist.all
    @albums = Album.all
  end

  protected
  def redirect_back_or_root(flash_message = nil)
    redirect_back fallback_location: dashboard_path, flash: flash_message
  end
end
