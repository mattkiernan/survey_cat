Rails.application.routes.draw do
  root "surveys#index"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :surveys do
    resources :questions, only: [:show, :new, :create]
    resources :text_styles, only: [:new, :create, :edit, :update]
    resources :multi_choice_styles, only: [:new, :create, :edit, :update]
    resources :responses, only: [:new, :create, :show, :index]
  end
  resources :answers, only: [:new, :create]
    resources :multi_choice_styles, only: [] do
      resources :multi_choice_options, only: [:new, :create]
    end
end
