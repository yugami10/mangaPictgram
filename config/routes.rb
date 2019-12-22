Rails.application.routes.draw do

  get 'sessions/new'
  get 'pages/index'
  root 'pages#index'
  
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
