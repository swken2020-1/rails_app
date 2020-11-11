Rails.application.routes.draw do
  root to: 'top#main'
  resources :users
end
