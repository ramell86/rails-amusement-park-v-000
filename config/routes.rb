Rails.application.routes.draw do

root 'users#home'
  resource :users
  get 'users/:id', to: 'users#show'



end