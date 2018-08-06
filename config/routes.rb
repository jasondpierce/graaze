Rails.application.routes.draw do
  resources :finances
  devise_for :users
    
  resources :pastures
  resources :herds
  resources :animals
  root 'welcome#index'
  resources :livestock
  
  #resources :users, only: [:show]
  get 'dashboard_select', to: 'herds#dashboard_select'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
