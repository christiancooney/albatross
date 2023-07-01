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
  get '/travel', to: 'pages#travel'
  get '/admin', to: 'pages#admin'
  get '/about', to: 'pages#about'
  get '/inspiration', to: 'pages#inspiration'
  get '/recipes', to: 'pages#recipes'
  get '/recipes/starters', to: 'pages#starters'
  get '/recipes/mains', to: 'pages#mains'
  get '/recipes/sweets', to: 'pages#sweets'
  get '/recipes/drinks', to: 'pages#drinks'
  get '/recipes/snacks', to: 'pages#snacks'
  get '/merchandise', to: 'pages#merchandise'
  get "articles/:id/print", to: "articles#print"

  get '/404', to: 'errors#not_found'
get '/500', to: 'errors#internal_server'
get '/422', to: 'errors#unprocessable'

end
