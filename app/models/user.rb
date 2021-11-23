class User < ApplicationRecord
    has_many :user_teams
    has_many :players, through: :user_teams
end
