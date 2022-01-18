class UserTeam < ApplicationRecord
    belongs_to :user
    has_many :user_team_players
    has_many :players, through: :user_team_players
    validate :user_team_player_count, :on => :update
end
