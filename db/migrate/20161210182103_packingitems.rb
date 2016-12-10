class Packingitems < ActiveRecord::Migration[5.0]
  def change
    t.string :item, null: false
    t.references :packlist, foreign_key: true, index: true

    t.timestamps(null: false)
  end
end
