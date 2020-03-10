class CreateBattlePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :battle_players do |t|
      t.references :player, null: false, foreign_key: true
      t.references :battle, null: false, foreign_key: true
      t.datetime :battle_date

      t.timestamps
    end
  end
end
