Rails.application.routes.draw do
  resources :friends
  resources :user_team_players
  resources :user_teams
  resources :users
  resources :teams
  resources :players 

  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  get "/myteams", to: "user_teams#my_teams"

  


  # react router / deployment
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
