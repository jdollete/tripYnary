class Eventitems < ActiveRecord::Migration[5.0]
  def change
    create_table :eventitems do |t|
      t.string :description, limit: 50
      t.time :starts_at
      t.references :event, foreign_key: true, index: true

      t.timestamps(null: false)
    end
  end
end
