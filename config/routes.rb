Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "contacts#index"
  resources :contacts, only: [:index, :new, :create]
  resources :trackings, only: [:index, :create]
  get '/about', to: 'pages#about'
end
