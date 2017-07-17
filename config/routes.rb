Rails.application.routes.draw do
  devise_for :users
  resources :quotes
  resource :sessions, only: [:create, :destroy]
end
