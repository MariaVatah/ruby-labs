Rails.application.routes.draw do
  resources :users
  delete "users/destroy_all", to: "users#destroy_all", as: :destroy_all_users

  root "users#index"

  get "genres" => "pages#genres"
  get "today" => "pages#today"
  get "tomorrow" => "pages#tomorrow"
  get "about" => "pages#about"

  get "hi/index"

  get "up" => "rails/health#show", as: :rails_health_check
end