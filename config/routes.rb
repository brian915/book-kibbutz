Rails.application.routes.draw do
  resources :shares
  resources :books
  resources :authors
  resources :books
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
