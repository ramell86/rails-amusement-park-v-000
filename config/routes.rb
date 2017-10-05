Rails.application.routes.draw do

root 'users#home'

  resources :users
  # resources :sessions
 
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
  # get 'users/:id', to: 'users#show'


end