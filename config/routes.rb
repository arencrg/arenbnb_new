Rails.application.routes.draw do

devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "devise/registrations" }
  root 'bnbrooms#index'
  resources :bnbrooms
  resources :users, only: [:show, :index]
  
end
