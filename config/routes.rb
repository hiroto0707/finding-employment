Rails.application.routes.draw do
  
  root to: 'users#index'
  devise_for :users

  resources :memos, only: [:index, :new]
end
