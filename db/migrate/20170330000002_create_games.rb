class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :location
      t.string :date
      t.string :time
      t.integer :away_team_id
      t.integer :home_team_id
      t.references :winning_team,  :null => true

      t.timestamps
    end
  end
end
