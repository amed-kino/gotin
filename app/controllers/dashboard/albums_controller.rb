class Dashboard::AlbumsController < Dashboard::DashboardController

  def index
    @albums = Album.all
  end

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

  private
  def album_params
    params.require(:album).permit(:title, :year)
  end



end
