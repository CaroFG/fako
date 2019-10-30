Rails.application.routes.draw do
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#home"
  resources :items do 
    resource :favorite, only: [:create, :destroy]
  end
  resources :favorites, only: [:index]
  resources :categories
  resources :types
  resources :carts, only: [:show, :update]
  resources :orders, only: [:create]
  resources :cart_items, only: [:create, :update, :destroy]
  resources :searches, only: [:index]
  resources :new_items, onlu: [:index]
end
