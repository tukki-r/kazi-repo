Rails.application.routes.draw do
  root to: 'reports#index'
  devise_for :users
  resources :reports, only: [:index, :new, :create, :show] do
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: :show 
end
