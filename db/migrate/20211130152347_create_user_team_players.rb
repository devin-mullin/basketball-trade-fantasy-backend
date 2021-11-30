class CreateUserTeamPlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_team_players do |t|
      t.integer :user_team_id
      t.integer :player_id

      t.timestamps
    end
  end
end
