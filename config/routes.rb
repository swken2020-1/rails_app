Rails.application.routes.draw do
  root to: 'top#main'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/users/new' => 'users#new'
  get '/users/:id' => 'users#show'
  delete '/users/:id', to: 'users#destroy'
  get '/recruitments/new', to: 'recruitments#new'
  get '/recruitments/search', to: 'recruitments#search'
  delete '/recruitments/:id', to: 'recruitments#destroy'
  post '/recruitments/index', to: 'recruitments#update'
  get '/recruitments/:id', to: 'recruitments#show'
  
  resources :users
  resources :recruitments
end
