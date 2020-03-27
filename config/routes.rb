Rails.application.routes.draw do
  root to: 'corporate_responses#index'
  devise_for :users
  resource :evidence, only: [:new, :create]
  resource :search, only: [:show]
  resources :organizations, only: [:index, :new, :create, :show] do
    scope module: :organizations do
      resource :evidence, only: [:index, :show]
    end
  end
end
