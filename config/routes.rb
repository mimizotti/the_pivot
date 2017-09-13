Rails.application.routes.draw do
  root to: 'home#index'

  resources :items, only:[:new, :create, :index, :show]
  resource :cart
  get '/:category', to: 'categories#show', param: :slug, as: "category"


end
