Rails.application.routes.draw do
  resources :cookbooks
  resources :recipes
  get '/reverse', to: "recipes#reverse"
  resources :users
  resources :sessions, only: [:create]
end
