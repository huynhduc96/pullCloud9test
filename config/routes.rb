Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'

  resources :microposts
  resources :users
  root 'users#index'
end
