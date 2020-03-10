class CreateClans < ActiveRecord::Migration[6.0]
  def change
    create_table :clans do |t|
      t.string :tag
      t.string :name
      t.references :player, null: false, foreign_key: true
      t.string :country

      t.timestamps
    end
  end
end
