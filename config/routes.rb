Rails.application.routes.draw do
  devise_for :users
  root    'images#index'
  get     'images'           => 'images#index'
  get     'images/new'       => 'images#new'
  post    'images'           => 'images#create'
  delete  'images/:id'       => 'images#destroy'
  get     'images/:id/edit'  => 'images#edit'
  patch   'images/:id'       => 'images#update'
  get     'users/:id'        => 'users#show'
end
