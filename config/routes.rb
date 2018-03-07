Rails.application.routes.draw do
  resources :movies
  resources :universes
  resources :videos, only: [:new, :index, :destroy]

  get '/fetch_universes' => 'movies#fetch_universes'
  post '/add_universe' => 'movies#add_universe'
end
