Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get 'static_pages/home'
  get  '/help',    to: 'static_pages#help'

  resources :microposts
  resources :users
  root 'users#index'
  get  '/signup',  to: 'users#new'
end
