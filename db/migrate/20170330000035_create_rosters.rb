class CreateRosters < ActiveRecord::Migration[5.0]
  def change
    create_table :rosters do |t|
      t.boolean :sub?
      t.integer :player_id
      t.integer :team_id
      
      t.timestamps
    end
  end
end
