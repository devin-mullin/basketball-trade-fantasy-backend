class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :full_name
      t.string :abrv
      t.string :simple_name
      t.string :location

      t.timestamps
    end
  end
end
