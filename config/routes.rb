Rails.application.routes.draw do

  resources :posts, only: [:index, :show] do
    resources :comments
  end

  namespace :admin do
    resources :posts, except: [:index, :show]
  end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root "posts#index"

  get '/about', to: 'pages#about'
end
