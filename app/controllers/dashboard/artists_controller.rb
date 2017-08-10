class Dashboard::ArtistsController <  Dashboard::DashboardController

  before_action :set_artist, only: [:edit, :update, :destroy, :show]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
      if @artist.save
        redirect_to @artist, notice: 'Artist has been saved successfully.'
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to @artist, notice: 'Artist has been updated successfully.'
    else
      render :new
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_url, notice: 'Artist was successfully destroyed.'
  end


  def show
  end

  private
  def artist_params
    params.require(:artist).permit(:name)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
