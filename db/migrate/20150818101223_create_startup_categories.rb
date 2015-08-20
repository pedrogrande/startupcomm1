class CreateStartupCategories < ActiveRecord::Migration
  def change
    create_table :startup_categories do |t|
      t.references :startup, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
