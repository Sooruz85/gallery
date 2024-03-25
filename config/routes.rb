Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'
  get 'pages/contact'
  get 'paiements/new'
  get 'paiements/create'
  get 'panier/index'
  get 'panier/create'
  get 'panier/destroy'
  get 'commandes/index'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'categories/index'
  get 'categories/show'
  get 'tableaux/index'
  get 'tableaux/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  #route de page d'accueil
  root 'tableaux#index'

  # Routes pour les tableaux
  resources :tableaux, only: [:index, :show]

  # Catégories de tableaux
  resources :categories, only: [:index, :show]

  # Recherche de tableaux
  get '/recherche', to: 'tableaux#search', as: 'recherche_tableaux'

  # Authentification et gestion de compte
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :edit, :update]
  resources :commandes, only: [:index]

  # Panier et paiement
  resources :panier, only: [:index, :create, :destroy]
  resources :paiements, only: [:new, :create]

  # Gestion du site (administrateurs)
  namespace :admin do
    get 'utilisateurs/index'
    get 'utilisateurs/show'
    get 'utilisateurs/edit'
    get 'utilisateurs/update'
    get 'commandes/index'
    get 'commandes/show'
    get 'commandes/edit'
    get 'commandes/update'
    get 'tableaux/index'
    get 'tableaux/show'
    get 'tableaux/new'
    get 'tableaux/create'
    get 'tableaux/edit'
    get 'tableaux/update'
    get 'tableaux/destroy'
    get 'dashboard/index'
    root 'dashboard#index'
    resources :tableaux
    resources :commandes
    resources :utilisateurs
  end

  # Pages statiques
  get '/apropos', to: 'pages#about', as: 'apropos'
  get '/contact', to: 'pages#contact', as: 'contact'

  # Uncomment and define the root path route ("/") if needed
  # root "posts#index"
end
