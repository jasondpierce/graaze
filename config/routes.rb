Rails.application.routes.draw do
  resources :pastures
  resources :herds
  resources :animals
  devise_for :users, :controller => { :registrations => 'registrations'}
  root 'welcome#index'
  resources :livestock
  resource :user_animals, only: [:create]
  #get 'livestock', to: 'livestock#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
