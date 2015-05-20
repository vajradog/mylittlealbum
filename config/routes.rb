Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  root 'users#new'
  resources :photos, only: [:index, :create]
  resources :users, only: [:create, :new]
  get 'login', to: "sessions#new"
  get 'logout', to: "sessions#destroy"
  resources :sessions, only: [:create]
end
