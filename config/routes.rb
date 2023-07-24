Rails.application.routes.draw do
  resources :posts, except: [:index]
  resources :reactions, only: [:create, :destroy]

  get '/posts', to: 'posts#index', as: 'user_root'

  get 'home/index'
  
  devise_for :controllers
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/") 
  root "home#index"
  
end
