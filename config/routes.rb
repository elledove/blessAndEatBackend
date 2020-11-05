Rails.application.routes.draw do
  # resources :order_items
  # resources :menu_items
  # resources :orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#loggin_in"
  root to: "static#home"

  namespace :api do
    namespace :v2 do
      resources :order_items
      resources :orders
      resources :users
      resources :menu_items




end
