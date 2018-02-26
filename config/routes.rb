Rails.application.routes.draw do
  devise_for :users
  resources :hours
  resources :days
  resources :services
  resources :images
  resources :image_types
  root 'businesses#index'
  resources :businesses
  resources :types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
