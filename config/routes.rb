Rails.application.routes.draw do
  resources :subscriptions
  # devise_for :users
  root 'home#index'
  resources :user

  # resources :users, except: []

  devise_for :users, skip: [:sessions, :registrations]
    as :user do
      get 'signin', to: 'authentication/sessions#new', as: :new_user_session
      post 'signin', to: 'authentication/sessions#create', as: :user_session
      delete 'signout', to: 'authentication/sessions#destroy', as: :destroy_user_session

      get 'register', to: 'authentication/registrations#new', as: :new_user_registration
      post 'register', to: 'authentication/registrations#create', as: :user_registration
    end

  get 'plans', to: 'plans#new'
end
