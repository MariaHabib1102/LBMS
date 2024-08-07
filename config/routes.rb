Rails.application.routes.draw do
  resources :books
  resources :authors
  # Set up Devise routes with default controllers
  devise_for :users

  # Define the root path for authenticated users
  authenticated :user do
    root 'application#index', as: :authenticated_root
  end

  # Define the root path for unauthenticated users
  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end

  # Other routes...
end
