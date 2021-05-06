Rails.application.routes.draw do
  get 'recipes/new'
  get 'sessions/new'
  get 'users/new'
  get 'pages/index'
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  resources :recipes
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
