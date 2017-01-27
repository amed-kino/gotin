Rails.application.routes.draw do

  namespace :admin do
    resources :artists, :albums, :lyrics
  end

  root 'artists#home'
end
