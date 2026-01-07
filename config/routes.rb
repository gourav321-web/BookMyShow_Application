Rails.application.routes.draw do

  get 'sessions/new', to: "sessions#new"
  post 'sessions/create',to: "sessions#create"
  delete 'sessions/destroy',to: "sessions#destroy"

  get 'users/new',to: "users#new"
  post 'users/create',to: "users#create"

  get 'movies/index',to: "movies#index"
  post 'movies/show',to: "movies#show"

  get 'bookings/new',to: "bookings#new"
  post 'bookings/create',to: "bookings#create"
  get 'bookings/show',to: "bookings#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
