Rails.application.routes.draw do
  
  resources :transactions
  resources :tenants
  resources :landlords
  resources :properties

  devise_for :users
  root to: 'page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
