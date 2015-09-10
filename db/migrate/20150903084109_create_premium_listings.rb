class CreatePremiumListings < ActiveRecord::Migration
  def change
    create_table :premium_listings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :startup, index: true, foreign_key: true
      t.decimal :price
      t.datetime :expiry_date

      t.timestamps null: false
    end
  end
end
