Rails.application.routes.draw do

  namespace :dashboard do
    resources :artists, :albums, :lyrics
    match '/' => 'dashboard#index', via: :get
  end

  match '/about' => 'pages#about', via: :get
  match '/contact' => 'pages#contact', via: :get

  root 'pages#home'

end
