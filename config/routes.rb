Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  post "/dogs" => "dogs#create"
  delete "/dogs/:id" => "dogs#destroy"
  
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"


end