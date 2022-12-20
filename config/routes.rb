Rails.application.routes.draw do
  resources :restaurant_meals
  resources :meals
  resources :orders
  resources :restaurants
  resources :customers
end
