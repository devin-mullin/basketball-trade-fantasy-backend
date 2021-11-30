class TeamSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :abrv, :simple_name, :location
end
