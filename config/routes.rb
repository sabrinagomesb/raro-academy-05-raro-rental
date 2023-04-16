Rails.application.routes.draw do
  get "home/index"
  devise_for :usuarios
  resources :aluguels
  resources :clientes
  resources :veiculos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
