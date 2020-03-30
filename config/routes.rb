require 'sidekiq/web'

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
    resources :submissions
    resources :sources
    resources :scraping_attributes

    authenticate :user, ->(user) { user.admin? } do
      namespace :tools do
        mount Sidekiq::Web => '/sidekiq'
        resource :sentiments, only: [:new, :create]
      end
    end

    root to: "users#index"
  end
end
