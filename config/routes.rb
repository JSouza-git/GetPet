Rails.application.routes.draw do
  resources :agendamentos
  resources :pets
  resources :clientes
  resources :servicos
  devise_for :users
  resources :usuario_cargos
  resources :cargos
  resources :usuarios
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
