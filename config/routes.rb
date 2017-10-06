Rails.application.routes.draw do

root 'users#home'

  resources :users
  resources :attractions
  resources :rides
 
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
  post '/users/:id', to: 'users#update'
  # get 'users/:id', to: 'users#edit'


end