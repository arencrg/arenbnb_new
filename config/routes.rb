Rails.application.routes.draw do

  resources :bookings
devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "devise/registrations" }
  root 'bnbrooms#index'

  resources :bnbrooms do
  resources :reviewcommentrates
  resources :bookings
end
  resources :users, only: [:show, :index]
  
end
