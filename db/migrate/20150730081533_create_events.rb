class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, index: true, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.string :name
      t.text :description
      t.string :location_name
      t.string :street_address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.string :website
      t.string :hashtag
      t.string :organiser
      t.string :logo
      t.string :banner
      t.decimal :price

      t.timestamps null: false
    end
  end
end
