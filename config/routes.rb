Rails.application.routes.draw do  # |map| was added for cart functionality
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

  root 'categories#index'
  resources :products
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
