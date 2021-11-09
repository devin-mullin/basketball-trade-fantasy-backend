class AddTeamIdToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :team_id, :integer 
  end
end
