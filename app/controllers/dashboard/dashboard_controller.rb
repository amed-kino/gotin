class Dashboard::DashboardController < ApplicationController
  layout 'dashboard'

  def index
    @artists = Artist.all
  end
end
