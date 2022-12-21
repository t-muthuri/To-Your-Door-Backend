Rails.application.routes.draw do
  resources :restaurant_meals, only: [:create]
  resources :meals, only: [:index, :show, :update, :create]
  resources :orders, only: [:index, :create]
  resources :restaurants, only: [:index, :show, :destroy]
  resources :customers, only: [:show, :create, :update, :destroy]
end
