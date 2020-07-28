Rails.application.routes.draw do
  # get "/"
  resources :neighborhoods
  resources :posts
  resources :reviews
  resources :appointments
  resources :cities
  resources :clients
  resources :stylists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
