class RemoveWinsFromPlayers < ActiveRecord::Migration[6.0]
  def change
    remove_column :players, :wins
  end
end
