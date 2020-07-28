Rails.application.routes.draw do
  resources :posts
  resources :cities
  resources :neighborhoods
  resources :reviews
  resources :appointments
  resources :stylists
  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
