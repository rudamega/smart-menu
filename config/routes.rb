Rails.application.routes.draw do
  resources :restaurants do
    resources :items
    resources :places
  end

  resources :carts do
    #TO DO : update this list so we can update the quantity of items within our cart
    resources :cart_items, only: [:index, :new, :create, :destroy]
  end

  devise_for :users
  root to: 'pages#home'
  get 'my_restaurant', to: 'restaurants#my_restaurant'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
