class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.text :description
      t.string :logo
      t.string :website
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
