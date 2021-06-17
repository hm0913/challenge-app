Rails.application.routes.draw do
  resources :results
  root "goals#new"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"

  resources :users

  resources :goals
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
