class Public::PagesController < ApplicationController

  def home
    @artists = Artist.all
  end

  def about

  end

  def contact

  end

end
