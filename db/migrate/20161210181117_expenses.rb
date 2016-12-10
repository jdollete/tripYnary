class Expenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.string :expense, null: false
      t.decimal :cost, null: false
      t.references :trip, foreign_key: true, index: true

      t.timestamps(null: false)
    end
  end
end
