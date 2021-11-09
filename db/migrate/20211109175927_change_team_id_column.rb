class ChangeTeamIdColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :players, :team_id, :Team_id
  end
end
