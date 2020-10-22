Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'what_it_is', to: 'pages#what_it_is'
  get 'research', to: 'pages#research'
   get 'contact', to: 'pages#contact'

  # resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
