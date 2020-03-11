class AddDeckSelectionToBattles < ActiveRecord::Migration[6.0]
  def change
    add_column :battles, :deck_selection, :string
  end
end
