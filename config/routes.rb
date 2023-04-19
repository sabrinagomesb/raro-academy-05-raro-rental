Rails.application.routes.draw do
  get "relogio", to: "relogio#index"
  devise_for :usuario, controllers: {
                         registrations: "usuarios/registrations",
                       }
  resources :aluguels
  resources :clientes
  resources :veiculos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "aluguels#index"
end
