Rails.application.routes.draw do

  root "users#new"
  # get '/', to: 'users#new', as
  resource :users


end