Rails.application.routes.draw do
  resources :movies
  resources :reviews
  resources :users

  # get "users", to: "users#index"
  # get "users/:id", to: "users/show"
  post "/login", to: "users#login"
  get "/me", to: "users#me"

end
