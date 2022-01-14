class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :user_teams

  has_many :user_teams
end
