Rails.application.routes.draw do
  
  root to: 'users#index'
  devise_for :users

  resources :memos do
   collection do
    get 'search'
   end
  end

  resources :enterprises do
    resources :comments, only: :create
    collection do
     get 'search'
    end
   end
  resources :users, only: :show
end
