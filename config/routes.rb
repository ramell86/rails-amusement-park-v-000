Rails.application.routes.draw do

root 'users#home'

  resources :users
  resources :sessions
  # get 'users/:id', to: 'users#show'


end