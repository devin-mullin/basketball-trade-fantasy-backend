class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|      
      t.string :name
      t.string :pos
      t.integer :age
      t.string :tm
      t.integer :g
      t.integer :gs
      t.float :mp
      t.float :fg
      t.float :fga
      t.float :fgp
      t.float :thp
      t.float :thpa
      t.float :thpp
      t.float :twp
      t.float :twpa
      t.float :twpp
      t.float :efgp
      t.float :ft
      t.float :fta
      t.float :ftp
      t.float :orb
      t.float :drb
      t.float :trb
      t.float :ast
      t.float :stl
      t.float :blk
      t.float :tov
      t.float :pf
      t.float :pts
      t.timestamps
    end
  end
end
