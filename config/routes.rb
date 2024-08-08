Rails.application.routes.draw do
  resources :calendars
  resources :calendar_days  
  resources :products
  resources :employees
  resources :clients
  resources :sessions
  resources :groups do
    member do
      post 'enroll'
    end
  end

  root to: "home#index"
end
