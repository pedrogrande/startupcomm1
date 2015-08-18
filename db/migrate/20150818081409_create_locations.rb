class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :startup, index: true, foreign_key: true
      t.string :street
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country

      t.timestamps null: false
    end
  end
end
