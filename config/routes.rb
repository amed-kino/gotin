Rails.application.routes.draw do
  
  scope module: 'dashboard' do
    resources :artists, :albums, :lyrics
    match '/dashboard' => 'dashboard#index', via: :get, as: 'dashboard'
  end

  match '/about' => 'pages#about', via: :get
  match '/contact' => 'pages#contact', via: :get

  root 'pages#home'

end
