class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :message_type
      t.text :message

      t.timestamps null: false
    end
  end
end
