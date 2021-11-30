class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :pos, :age, :tm, :mp, :pts, :fgp, :thpp, :ftp, :trb, :ast, :stl, :blk, :tov
end
