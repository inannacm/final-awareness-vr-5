Rails.application.routes.draw do
  root to: 'pages#home'
  get 'project', to: 'pages#project'
  get 'product', to: 'pages#product'
  get 'research', to: 'pages#research'
   get 'contact', to: 'pages#contact'

  # resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
