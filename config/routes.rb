Rails.application.routes.draw do
  resources :usuario_cargos
  resources :cargos
  resources :usuarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
