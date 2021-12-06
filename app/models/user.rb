class User < ApplicationRecord
    has_many :user_teams
    has_many :user_team_players, through: :user_teams
    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }
end
