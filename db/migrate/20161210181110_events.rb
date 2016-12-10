class Events < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title, null: false, limit: 20
      t.date :date
      t.references :trip, foreign_key: true, index: true

      t.timestamps(null: false)
    end
  end
end
