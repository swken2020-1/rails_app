Rails.application.routes.draw do
  root to: 'top#main'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/users/new' => 'users#new'
  get '/users/:id' => 'users#show'
  post 'recruitments/index', to: 'recruitments#update' 
  resources :users
  resources :recruitments
end
