Rails.application.routes.draw do

  get 'comments/create'
  get 'comments/destroy'
  root 'tweets#index'
  devise_for :users

  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end
  
  resources :tweets
  resources :users
end
