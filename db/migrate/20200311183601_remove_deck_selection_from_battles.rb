class RemoveDeckSelectionFromBattles < ActiveRecord::Migration[6.0]
  def change
    remove_column :battles, :deck_selection
  end
end
