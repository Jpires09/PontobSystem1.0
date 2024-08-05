Rails.application.routes.draw do
  root to: "home#index"
  
  resources :products
  resources :employees
  resources :clients
  resources :sessions
  resources :turmas
end
