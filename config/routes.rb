Rails.application.routes.draw do
  resources :restaurants do
    resources :items, only: [:index, :show, :new, :create]
    resources :places
    get 'carts', to: 'carts#my_services'
  end

  resources :carts do
    #TO DO : update this list so we can update the quantity of items within our cart
    resources :cart_items, only: [:index, :new, :create, :destroy, :update]
  end

  devise_for :users
  root to: 'pages#home'
  get 'my_restaurant', to: 'restaurants#my_restaurant'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
