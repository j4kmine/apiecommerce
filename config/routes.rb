Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'sign_up', to: 'registrations#create'
  post 'login', to: 'access_tokens#create'
  delete 'logout', to: 'access_tokens#destroy'
  post 'products', to: 'products#index'
  resources :carts, only: [:index, :create, :update, :destroy]
  resources :orders, only: [:index, :create]
end
