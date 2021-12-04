Rails.application.routes.draw do
  resources :user_team_players
  resources :user_teams
  resources :users
  resources :teams
  resources :players 

  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  delete "/user_player_del", to: "user_team_players#destroy"

  # react router / deployment
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
