class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :tag
      t.references :clan, null: false, foreign_key: true
      t.string :role
      t.integer :wins
      t.integer :losses
      t.integer :total_donations
      t.string :current_deck

      t.timestamps
    end
  end
end
