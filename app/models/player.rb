class Player < ApplicationRecord
    belongs_to :team
    has_many :user_team_players
end
