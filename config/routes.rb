Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'components', to: 'pages#components'
  get 'account', to: 'account#account'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cars, only: %i[index show new create update destroy] do
    scope module: :cars do
      resources :alerts, only: %i[index]
      resources :documents, only: %i[index new create destroy]
    end
  end

  resources :alerts, only: %i[update], controller: 'cars/alerts'
  resources :documents, only: %i[destroy]
  resources :garages, only: %i[index]
end
