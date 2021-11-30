class User < ApplicationRecord
    has_many :user_teams
    has_many :user_team_players, through: :user_teams
end
