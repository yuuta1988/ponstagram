Rails.application.routes.draw do
  get 'relationships/create'

  get 'relationships/destroy'

  devise_for :users
  resources :users, only: [:show, :index]
  resources :users do
    member do
     get :follower, :followed
    end
  end
  root    'images#index'
  resources :images do
    resources :comments, only: [:create, :destroy]
  end
  post "likes/:image_id/create" => "likes#create"
  post "likes/:image_id/destroy" => "likes#destroy"
  get "users/:id/likes" => "users#likes"
  resources :relationships, only: [:create, :destroy]
end
