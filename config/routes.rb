Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "students" => "students#create"
  patch "/students/:id" => "students#edit"
  delete "/students/:id" => "students#destroy"

  post "/educations" => "educations#create"

  #### EXPERIENCES ROUTES

  get "/experiences" => "experiences#index"
  get "/experiences/:id" => "experiences#show"
  post "experiences" => "experiences#create"
  patch "/experiences/:id" => "experiences#edit"
  delete "/experiences/:id" => "experiences#destroy"
end
