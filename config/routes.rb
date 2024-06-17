# config/routes.rb
Rails.application.routes.draw do
  root 'sessions#new'
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :receptionists, only: [:index]
  resources :doctors, only: [:index]
  resources :patients

  get 'dashboard', to: 'dashboard#index'
end
