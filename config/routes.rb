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
  #### educations
  get "/educations/:id" => "educations#show"
  post "educations" => "educations#create"
  patch "/educations/:id" => "educations#edit"
  delete "/educations/:id" => "educations#destroy"

  ####
  get "/experiences" => "experiences#index"
  get "/experiences/:id" => "experiences#show"
  post "experiences" => "experiences#create"
  patch "/experiences/:id" => "experiences#edit"
  delete "/experiences/:id" => "experiences#destroy"

  ####
  post "/capstones" => "capstones#create"
  patch "/capstones/:id" => "capstones#edit"
  delete "/capstones/:id" => "capstones#delete"
  get "/capstones/:id" => "capstones#show"
end
