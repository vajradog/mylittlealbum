Rails.application.routes.draw do
  root 'users#new'
  resources :photos, only: [:index, :create, :destroy]
  resources :users, only: [:create, :new]
  get 'login', to: "sessions#new"
  get 'logout', to: "sessions#destroy"
  resources :sessions, only: [:create]
end
