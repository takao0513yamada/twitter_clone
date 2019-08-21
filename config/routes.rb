Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  root 'tweets#index'
  devise_for :users
  resources :tweets
  resources :users
end
