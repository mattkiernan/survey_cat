Rails.application.routes.draw do
  root "surveys#index"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :surveys, only: [:index, :show]
end
