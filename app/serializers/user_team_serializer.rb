class UserTeamSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  
  has_many :user_team_players
  has_many :players
end
