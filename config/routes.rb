Rails.application.routes.draw do
  get 'dashboard/index'
  resources :employees
  resources :devices
  resources :softwares
  resources :manufacturers
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 root "dashboard#index"
end
