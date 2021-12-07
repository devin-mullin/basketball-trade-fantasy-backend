class UserTeamSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name
  
  has_many :user_team_players
  has_many :players
end
