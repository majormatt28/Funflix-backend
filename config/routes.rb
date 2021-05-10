Rails.application.routes.draw do
  resources :movies
  resources :reviews
  resources :users
  post "/login", to: "users#login"

end
