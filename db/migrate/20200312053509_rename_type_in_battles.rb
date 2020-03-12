class RenameTypeInBattles < ActiveRecord::Migration[6.0]
  def change
    rename_column :battles, :type, :game_mode
  end
end
