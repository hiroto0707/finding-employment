Rails.application.routes.draw do
  
  root to: 'users#index'
  devise_for :users

  resources :memos
  resources :enterprises, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :users, only: :show
end
