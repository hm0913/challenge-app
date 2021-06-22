Rails.application.routes.draw do
  resources :results
  root "results#new"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"

  resources :users

  resources :goals

  post "sessions/guest_sign_in", to: "sessions#guest_sign_in"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
