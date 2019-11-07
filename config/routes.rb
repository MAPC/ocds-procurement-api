Rails.application.routes.draw do
  get 's3/direct_post'
  resources :packages
  resources :releases
  get '/new', to: 's3#new'
end
