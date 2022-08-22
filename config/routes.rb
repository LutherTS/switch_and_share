Rails.application.routes.draw do
  # get '/games', to: 'games#index'
  # get '/games/:id', to: 'games#show'
  # get '/games/new', to: 'games#new'
  # post '/games', to: 'games#create'
  # delete '/games/:id', to: 'games#destroy'

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :games, only: [:index, :show, :new, :create, :destroy]

  # Defines the root path route ("/")
  # root "articles#index"
end
