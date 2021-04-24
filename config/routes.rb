Rails.application.routes.draw do
  get 'pages/index'
  root 'pages#index'
  get 'pages/help'
end
