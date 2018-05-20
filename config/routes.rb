Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :index]
  root    'images#index'
  resources :images do
    resources :comments, only: [:create, :destroy]
  end
  post "likes/:image_id/create" => "likes#create"
  post "likes/:image_id/destroy" => "likes#destroy"
  get "users/:id/likes" => "users#likes"
end
