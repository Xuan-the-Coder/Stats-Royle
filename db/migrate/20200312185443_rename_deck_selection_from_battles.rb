class RenameDeckSelectionFromBattles < ActiveRecord::Migration[6.0]
  def change
    rename_column :battles, :deck_selection, :opponent
  end
end
