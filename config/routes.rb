Rails.application.routes.draw do

root 'users#home'

  resources :users
  resources :attractions
  resources :rides
 
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
   post '/rides/new', to: 'rides#new'
  # get 'users/:id', to: 'users#edit'
  # resources :users do
  #   resources :rides
  # end

end