class CreateSports < ActiveRecord::Migration[5.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.integer :min_players
      t.integer :max_players
      
      t.timestamps
    end
  end
end
