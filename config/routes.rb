Rails.application.routes.draw do
  root "surveys#index"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :surveys do
    resources :questions, only: [:show, :new, :create]
    resources :text_styles, only: [:new, :create]
  end
end
