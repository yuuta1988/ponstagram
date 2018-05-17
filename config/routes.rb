Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root    'images#index'
  resources :images do
    resources :comments, only: [:create]
  end
  post "likes/:image_id/create" => "likes#create"
  post "likes/:image_id/destroy" => "likes#destroy"
end
