Rails.application.routes.draw do
  resources :playlist_mixclouds
  resources :mixclouds
  resources :playlist_songs
  resources :songs
  resources :playlists
  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'auth#create'
      get '/home', to: 'users#home'
    end
  end

  # post '/login', to: 'users#login'
  post '/addsong', to: 'songs#addsong'
  post '/addmixcloud', to: 'mixclouds#addmixcloud'
  delete '/removesong', to: 'playlist_songs#removesong'
  delete '/removemix', to: 'playlist_mixclouds#removemix'
  get '/getSongs/:id', to: 'playlists#getSongs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
