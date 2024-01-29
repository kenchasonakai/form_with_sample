Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :users
  get "login" => "user_sessions#new"
  post "login" => "user_sessions#create"
  delete "logout" => "user_sessions#destroy"
end
