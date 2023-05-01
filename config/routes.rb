Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "bookings#index"

  resources :bookings, only: %i[new create]

  scope "/admin" do
    resources :bookings, only: %i[index show]
  end
end
