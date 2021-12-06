class AddNameToUserTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :user_teams, :name, :string 
  end
end
