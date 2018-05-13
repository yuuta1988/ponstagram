Rails.application.routes.draw do
  root  'images#index'
  get   'images'        => 'images#index'
  get   'images/new'    => 'images#new'
  post  'images'        => 'images#create'
end
