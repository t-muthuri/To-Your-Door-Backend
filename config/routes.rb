Rails.application.routes.draw do
  resources :restaurant_meals
  resources :meals
  resources :orders
  resources :restaurants
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
