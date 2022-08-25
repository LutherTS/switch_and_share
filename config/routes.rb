Rails.application.routes.draw do
  #get 'bookings/new'
  #get 'bookings/create'
  #get 'bookings/edit'
  #get 'bookings/update'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'
  patch 'dashboard/update_booking', to: 'pages#update_status', as: 'update_booking_status'

  resources :games do
    resources :bookings, only: [:new, :create]
  end
  # resources :games, only: [:index, :show, :new, :create, :destroy]

  # Defines the root path route ("/")
  # root "articles#index"
end
