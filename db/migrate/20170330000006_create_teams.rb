class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :wins, default: 0
      t.string :mascot_url
      t.integer :captain_id
      t.integer :sport_id

      t.timestamps
    end
  end
end
