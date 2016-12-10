class Packinglists < ActiveRecord::Migration[5.0]
  def change
    t.string :title, null: false
    t.references :trip, foreign_key: true, index: true

    t.timestamps(null: false)
  end
end
