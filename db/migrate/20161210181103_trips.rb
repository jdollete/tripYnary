class Trips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :title, null: false
      t.string :description
      t.string :country, null: false
      t.string :state
      t.string :city
      t.string :address
      t.date :start_date, null: false
      t.references :user, foreign_key: true, index: true

      t.timestamps(null: false)
    end
  end
end
