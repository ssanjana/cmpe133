<<<<<<< HEAD
Rails.application.routes.draw do

  resources :line_items
  resources :carts
  devise_for :users

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
=======
Rails.application.routes.draw do

  resources :line_items
  resources :carts
  devise_for :users

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
>>>>>>> 4933270bbf7bc821417be985da244c8d8dadcc30
