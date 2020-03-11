class RemoveBattleIdFromBattles < ActiveRecord::Migration[6.0]
  def change
    remove_column :battles, :battle_id
  end
end
