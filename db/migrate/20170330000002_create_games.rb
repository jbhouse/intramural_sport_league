class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :location
      t.date :date
      t.time :time
      t.integer :away_team_id
      t.integer :home_team_id
      t.integer :winning_team_id

      t.timestamps
    end
  end
end
