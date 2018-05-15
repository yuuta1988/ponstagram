Rails.application.routes.draw do
  devise_for :users
  root    'images#index'
  resources :images do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
