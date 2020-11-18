Rails.application.routes.draw do
  root to: 'top#main'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/users/new' => 'users#new'
  get '/users/:id' => 'users#show'
  get '/recruitments/new', to: 'recruitments#new'
  post '/recruitments/index', to: 'recruitments#update'
  get '/recruitments/:id', to: 'recruitments#show'
  resources :users
  resources :recruitments
end
