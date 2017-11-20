Rails.application.routes.draw do

  get 'searches/new'

  get 'searches/create'

  get 'searches/show'

  resources :line_items
  resources :carts
  resources :searches
  devise_for :users

  resources :line_item
  resources :cart

  resources :charges
  
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

  get 'savings/index'

  get 'history/index'

  get 'recipe/index'

  get 'charges/new'

  get 'charges/create'

  get 'searches/index'

  get 'searches/show'

  #match 'devise/cart/index' => 'cart#index', :as => :cart, via: [:get]

  root 'categories#index'

  resources :products
  resources :categories
  resources :cart
  resources :savings
  resources :history
  resources :recipe

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
