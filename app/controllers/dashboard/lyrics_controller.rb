class Dashboard::LyricsController < Dashboard::DashboardController
  def new
    @lyric = Lyric.new
  end
end
