class CreateStartupUsers < ActiveRecord::Migration
  def change
    create_table :startup_users do |t|
      t.references :startup, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
