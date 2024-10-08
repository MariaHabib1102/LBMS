Rails.application.routes.draw do
  namespace :admin do
      resources :authors
      resources :books
      resources :book_users
      resources :likes
      resources :users

      root to: "authors#index"
    end
  get 'likes/create'
  get 'likes/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root 'application#index'
  resources :users, only: [:show, :edit, :update]
  resources :books
  resources :authors
  resources :likes, only: [:create, :destroy]
  get 'user_books', to: 'users#user_books', as: 'user_books'
  get '/books/genre/:genre', to: 'books#show_genre', as: 'genre_books'
  resources :book_users, only: [:create]



  # Defines the root path route ("/")
  # root "posts#index"
end
