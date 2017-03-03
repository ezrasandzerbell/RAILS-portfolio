Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :projects
  end
  root 'home#index'
  get '/about', to: 'home#show', as: 'about'
  get '/callback', to: 'home#callback', as: 'callback'
end
