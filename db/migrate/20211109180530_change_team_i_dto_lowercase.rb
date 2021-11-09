class ChangeTeamIDtoLowercase < ActiveRecord::Migration[6.1]
  def change
    rename_column :players, :Team_id, :team_id
    drop_table :teams
    create_table :teams do |t|
      t.string "full_name"
      t.string "abrv"
      t.string "simple_name"
      t.string "location"
    end
  end
end
