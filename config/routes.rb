# config/routes.rb
Rails.application.routes.draw do
  # Define the root path for authenticated users

  root 'application#index'


  # Define the root path for unauthenticated users
  # unauthenticated :user do
  #   root 'devise/sessions#new', as: :unauthenticated_root
  # end

  # Devise routes
  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :books
  resources :authors
  mount ActionCable.server => '/cable'
end
