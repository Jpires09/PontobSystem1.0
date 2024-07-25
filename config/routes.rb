Rails.application.routes.draw do
  root to: "home#index"
  
  resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :employees, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :clients, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
