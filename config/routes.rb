Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cars, only: %i[index show new create] do
    scope module: :cars do
      resource :mileages, only: %i[update]
      resources :alerts, only: %i[index]
      resources :documents, only: %i[index new create]
    end
  end

  resources :alerts, only: %i[update]
  resources :documents, only: %i[destroy]
  resources :garages, only: %i[index show]
end
