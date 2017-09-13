Rails.application.routes.draw do
  root to: 'home#index'

  resources :users

  delete "/logout", to: 'sessions#destroy', as: 'logout'
  get "/login", to: 'sessions#new', as: 'login'
  post "/login", to: 'sessions#create'
  get "/dashboard", to: 'user#show', as: 'dashboard'

  resources :items, only:[:new, :create, :index]

  get '/:category', to: 'categories#show', param: :slug
end
