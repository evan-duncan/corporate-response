Rails.application.routes.draw do
  root to: 'corporate_responses#index'
  devise_for :users
  resource :evidence, only: [:new, :create]
  resource :search, only: [:show]
  resources :organizations, only: [:index, :new, :create, :show] do
    scope module: :organizations do
      resource :evidence, only: [:index, :show]
      resources :events, only: [:index, :show]
    end
  end
  resources :events, only: [:index, :show, :new, :create]
  namespace :admin do
    resources :users
    resources :evidences
    resources :organizations
    resources :events

    root to: "users#index"
  end
end
