Rails.application.routes.draw do
  resources :movies
  resources :universes
  resources :videos, only: [:new, :index, :destroy]
end
