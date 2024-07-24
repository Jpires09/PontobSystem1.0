Rails.application.routes.draw do
  root to: "home#index"
  
  resources :products, only: [:show, :new, :create, :edit, :update, :destroy]
  get 'products/', to: 'products#index'
  
  get 'employees/', to: 'employees#index'
  resources :employees, only: [:show, :new, :create, :edit, :update, :destroy]

  get 'clients/', to: 'clients#index'
  resources :clients, only: [:show, :new, :create, :edit, :update, :destroy]

end
