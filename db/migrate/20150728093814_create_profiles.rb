class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :profile_pic
      t.text :bio
      t.string :city
      t.string :country
      t.string :twitter
      t.string :linkedin
      t.string :website
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
