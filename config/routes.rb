Rails.application.routes.draw do
  resources :users

  get '/planning', to: 'users#planning'
end
