Rails.application.routes.draw do
  root to: 'home#index'

  resources :orders, only: [:index, :show, :create, :new]

  resources :users, only: [:new, :create, :edit, :update]
  get "/dashboard", to:'users#show', as: 'dashboard'

  delete "/logout", to: 'sessions#destroy', as: 'logout'
  get "/login", to: 'sessions#new', as: 'login'
  post "/login", to: 'sessions#create'

  resources :items, only:[:new, :create, :index, :show]
  resource :cart
  get '/:category', to: 'categories#show', param: :slug, as: "category"

  namespace :admin do
    get "/dashboard", to: "users#show", as: "dashboard"
  end

  post 'retire' => 'items#retire_item', as: :retire
end
