Rails.application.routes.draw do
  resources :locations
  resources :countries
  resources :articles
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#home'
  resources :pages
  get '/destinations', to: 'pages#destinations'
  get '/inspiration', to: 'pages#inspiration'
  get '/recipes', to: 'pages#recipes'
  get '/merchandise', to: 'pages#merchandise'

end
