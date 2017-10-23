<<<<<<< HEAD
Rails.application.routes.draw do
  devise_for :users
=======
Rails.application.routes.draw do  # |map| was added for cart functionality
>>>>>>> a097a541c4d780af91f6bfb2f137952e3d1edd36
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
