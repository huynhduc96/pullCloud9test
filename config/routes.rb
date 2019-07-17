Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
  get 'static_pages/home'
  get  '/help',    to: 'static_pages#help'

  resources :microposts
  resources :users
  root 'users#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
