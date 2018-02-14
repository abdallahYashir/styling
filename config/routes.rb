Rails.application.routes.draw do
  resources :businesses
  resources :working_hours
  resources :days
  resources :schedules
  resources :schedule_types
  resources :services
  resources :images
  resources :image_types
  resources :business_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
