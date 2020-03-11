class RemoveLossesFromPlayers < ActiveRecord::Migration[6.0]
  def change
    remove_column :players, :losses
  end
end
