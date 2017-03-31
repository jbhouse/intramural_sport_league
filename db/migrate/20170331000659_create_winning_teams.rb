class CreateWinningTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :winning_teams do |t|
      t.integer :team_id
      t.integer :game_id

      t.timestamps
    end
  end
end
