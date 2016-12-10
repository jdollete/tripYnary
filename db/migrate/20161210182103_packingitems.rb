class Packingitems < ActiveRecord::Migration[5.0]
  def change
    create_table :packingitems do |t|
      t.string :item, null: false
      t.references :packinglist, foreign_key: true, index: true

      t.timestamps(null: false)
    end
  end
end
