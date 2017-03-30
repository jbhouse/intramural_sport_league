class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_digest

      t.timestamps
    end
  end
end
