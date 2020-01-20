Rails.application.routes.draw do
  root to: 'reports#index'
  devise_for :users
  resources :reports, only: [:index, :new, :create]
  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
