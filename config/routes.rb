Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  devise_for :users
  root to: "pages#home"

  resources :movies
  resources :series
end
