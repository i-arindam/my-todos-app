Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  resources :todos do
    collection do
      get :today
      get :calendar
    end
  end
  # get "today", to: "todos#today"
end
