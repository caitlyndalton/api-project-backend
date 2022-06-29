Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/tests" => "tests#index"
  get "/students" => "students#index"
  post "/students" => "students#create"
  get "/students/:id" => "students#show"
end
