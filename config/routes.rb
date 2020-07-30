Rails.application.routes.draw do
  # get "/"
  root 'stylists#home'
  resources :neighborhoods
  resources :posts
  resources :reviews
  resources :appointments
  resources :cities
  resources :clients
  resources :stylists
  # resources :stylists do
  #   resources :appointments
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
