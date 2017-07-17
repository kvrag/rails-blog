Rails.application.routes.draw do
  resources :posts do 
    resources :comments 
  end

  resources :users
  resources :sessions

  root "posts#index"

  get '/about', to: 'pages#about'
end
