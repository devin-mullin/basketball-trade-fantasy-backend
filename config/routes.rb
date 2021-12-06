Rails.application.routes.draw do
  resources :user_team_players
  resources :user_teams
  resources :users
  resources :teams
  resources :players 

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  


  # react router / deployment
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
