
Rails.application.routes.draw do

  scope 'dashboard', module: 'dashboard' do
    resources 'artists', :artists do
      post :add_album
    end
    resources 'albums', :albums
    resources 'lyrics', :lyrics
    match '/' => 'dashboard#index', via: :get, as: 'dashboard'
  end

  match 'artist/:artist_id', to: 'public/artists#show', via: :get, as: :public_artist
  match 'album/:artist_id/:album_id', to: 'public/albums#show', via: :get, as: :public_album
  match 'lyric/:artist_id/:album_id/:lyric_id', to: 'public/lyrics#show', via: :get, as: :public_lyric

  namespace :public do
    get 'artists/show'
  end

  namespace :public do
    get 'albums/show'
  end

  namespace :public do
    get 'lyrics/show'
  end

  match '/about' => 'public/pages#about', via: :get
  match '/contact' => 'public/pages#contact', via: :get

  root 'public/pages#home'

end
