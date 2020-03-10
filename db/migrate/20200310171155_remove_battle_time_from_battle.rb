class RemoveBattleTimeFromBattle < ActiveRecord::Migration[6.0]
  def change
    remove_column :battles, :battle_time
  end
end
