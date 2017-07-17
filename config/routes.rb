Rails.application.routes.draw do
  devise_for :users
  resources :quotes
  resources :sessions, only: [:create, :destroy]
end
