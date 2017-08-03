class Dashboard::ArtistsController <  Dashboard::DashboardController

  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
  end

  def show
  end

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

  private
  def artist_params
    params.require(:artist).permit(:name)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
