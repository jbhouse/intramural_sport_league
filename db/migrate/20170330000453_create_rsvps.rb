class CreateRsvps < ActiveRecord::Migration[5.0]
  def change
    create_table :rsvps do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :team_id

      t.timestamps
    end
  end
end
