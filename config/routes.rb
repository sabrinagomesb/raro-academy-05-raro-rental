Rails.application.routes.draw do
  get "relogio", to: "relogio#index"
  get "usuarios", to: "usuarios#index"
  devise_for :usuario, controllers: {
                         registrations: "usuarios/registrations",
                       }
  resources :aluguels
  resources :clientes
  resources :veiculos

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  authenticated :usuario do
    # root to: 'dashboard#index', as: :authenticated_root
    root "aluguels#index"
  end

  unauthenticated do
    as :usuario do
      root to: "devise/sessions#new", as: :unauthenticated_root
    end
  end
end
