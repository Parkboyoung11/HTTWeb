Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  scope "(:locale)", locale: /en|vi/ do
    resources :uploads, only: [:create]
    root "static_pages#home"
    get "/signup", to: "users#new"
    post "/signup", to: "users#create"
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"

    get 'loginsocail', to: redirect('/auth/google_oauth2'), as: 'loginsocail'
    get 'auth/:provider/callback', to: 'sessions#createSocail'
    get 'auth/failure', to: redirect('/')

    resources :users do
      resources :trips, only: :index
      resources :participations, only: :index
    end
    resources :account_activations, only: :edit
    resources :password_resets, except: [:show, :index, :destroy]
    resources :trips do
      resources :participations, except: [:new, :edit, :show]
      resources :searchs, only: :index
      resources :users, only: :index
      resources :notifications, only: [:create, :new]
    end
    resources :reviews do
      resources :comments
    end
    resources :comments do
      resources :comments
    end
    get "/about", to: "static_pages#about"
    resources :chatrooms, param: :slug
    resources :messages
    resources :reviews
    resources :results, only: [:index]
    resources :plants, only: [:new, :create, :show, :destroy]
    get "hastags/:title", to: "hastags#show", as: :hastag
    mount ActionCable.server => "/cable"
  end
end