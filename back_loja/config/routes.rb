Rails.application.routes.draw do
  resources :processadors
  resources :placas_maes
  resources :memorias_rams
  resources :marcas
  resources :compra_clientes
  resources :usuarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
