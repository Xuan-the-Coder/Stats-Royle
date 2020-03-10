class CreateBattles < ActiveRecord::Migration[6.0]
  def change
    create_table :battles do |t|
      t.integer :id
      t.string :type
      t.string :deck_selection
      t.datetime :battle_time

      t.timestamps
    end
  end
end
