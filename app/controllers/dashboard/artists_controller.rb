class Dashboard::ArtistsController <  Dashboard::DashboardController

  before_action :set_artist, only: [:edit, :update, :destroy, :show]

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist, notice: t('.notice')
    else
      flash[:alert] = t('.alert')
      render :new
    end
  end

  def add_album
    redirect_back_or_root( alert: t('.alert_no_params') ) and return unless ( params[:aritst_id].present? && params[:album_id].present? )
    if album_belongs_to_artist(params[:artist_id], params[:album_id])
      redirect_to @artist, notice: t('.notice')
    else
      edit
    end
  end

  def add_to_album_as_contributer
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to @artist, notice: t('.notice')
    else
      flash[:alert] = t('.alert')
      render :new
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_url, notice: 'Artist was successfully destroyed.'
  end


  def show

  end

  protected

  def album_belongs_to_artist(artist_id, album_id)
    !!Artist.find(artist_id).albums.find(album_id)
  end

  def artist_params
    params.require(:artist).permit(:name)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
