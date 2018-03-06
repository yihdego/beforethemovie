Rails.application.routes.draw do
  resources :movies
  resources :universes
  resources :videos, only: [:new, :index, :destroy]

  get '/add_universe' => 'movies#add_universe'
end
