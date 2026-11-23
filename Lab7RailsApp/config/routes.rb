Rails.application.routes.draw do
  devise_for :users
  
  resources :users
  resources :tickets
  delete "tickets/destroy_all", to: "tickets#destroy_all", as: :destroy_all_tickets
  delete "users/destroy_all", to: "users#destroy_all", as: :destroy_all_users

  root "users#index"

  get "genres" => "pages#genres"
  get "comedy" => "pages#comedy"
  get "drama" => "pages#drama"
  get "fantasy" => "pages#fantasy"
  get "horror" => "pages#horror"
  get "adventure" => "pages#adventure"
  get "today" => "pages#today"
  get "tomorrow" => "pages#tomorrow"
  get "about" => "pages#about"

  get "hi/index"

  get "up" => "rails/health#show", as: :rails_health_check
end