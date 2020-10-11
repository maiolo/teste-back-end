Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :contacts, only: [ :index, :create, :destroy]
      resources :trackings, only: [:index, :create]
    end
  end
  root to: "contacts#index"
  resources :contacts, only: [:index, :new, :create]
  resources :trackings, only: [:index, :create]
  get '/about', to: 'pages#about'
end
