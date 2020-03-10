class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.references :player, null: false, foreign_key: true
      t.string :name
      t.integer :card_id
      t.string :icon_url

      t.timestamps
    end
  end
end
