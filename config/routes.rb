Rails.application.routes.draw do
  devise_for :users
  get 'cart/index'

  get 'cart/add'

  get 'cart/edit'
  # map.resources :cart
  # map.connect ":controller/:action/:id"
  #instructs rails ro route correctly

  get 'categories/new'

  get 'categories/create'

  get 'categories/update'

  get 'categories/edit'

  get 'categories/destroy'

  get 'categories/index'

  get 'categories/show'

  match 'devise/cart/index' => 'cart#index', :as => :cart, via: [:get]
  
  root 'categories#index'

  resources :products
  resources :categories
  resources :cart

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
