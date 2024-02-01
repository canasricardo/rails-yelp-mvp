Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:show, :new, :create]
  end
  # resources :reviews, only: [:show]

  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # get 'reviews/new', to: "reviews#new"
end
