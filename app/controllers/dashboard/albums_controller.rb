class Dashboard::AlbumsController < Dashboard::DashboardController

  before_action :set_album, only: [:edit, :update, :destroy, :show]
  before_action :set_artist, only: [:update]

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
      if @album.save
        redirect_to @album, notice: 'Album has been saved successfully.'
      else
        render :new
      end
  end

  def edit
  end

  def update
    @album.artists << @artist if @artist
    if @album.update(album_params)
      redirect_to @album, notice: 'Album has been updated successfully.'
    else
      render :new
    end
  end

  def destroy
    @album.destroy
    redirect_to albums_url, notice: 'Album was successfully destroyed.'
  end

  private
  def album_params
    params.require(:album).permit(:title, :year)
  end

  def artist_params
    params.require(:album).permit(:artists)
  end

  def set_album
    @album = Album.find(params[:id])
  end

  def set_artist
    @artist = Artist.find_by_uid(artist_params[:artists])
  end
end
