# config/routes.rb

Rails.application.routes.draw do
  root 'homes#top'
  get '/home/about' => 'homes#about'
  devise_for :users
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  get 'about' => 'homes#about', as: 'about'
  
end







"""
Rails.application.routes.draw do
  root to: 'homes#top'
  get 'about' => 'homes#about'

  devise_for :users

  resources :books
  resources :users, only: [:index, :show, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
"""
