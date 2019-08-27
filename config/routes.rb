Rails.application.routes.draw do

  get 'comments/create'
  get 'comments/destroy'
  get 'favorites/create'
  get 'favorites/destroy'
  root  to: 'tweets#index'
  devise_for :users

  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end

  resources :tweets
  resources :users

  resources :tweets do
    resource :comments, only: [:create, :destroy]
  end
end
