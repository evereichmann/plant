Rails.application.routes.draw do
  resources :containers
  resources :cutting_notes
  resources :cuttings
  resources :plant_notes
  resources :order_notes
  resources :plants
  resources :orders
  devise_for :users
  
  root 'users#index'
  get 'pages/dashboard'
  get 'pages/sold'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'welcome#index'
end
