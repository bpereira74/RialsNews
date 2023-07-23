Rails.application.routes.draw do
  resources :publications, except: [:index]
  devise_for :users
  get 'home/index'
  get '/publications', to: 'publications#index', as: 'user_root'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
