class AddMoreColsToStartup < ActiveRecord::Migration
  def change
    add_column :startups, :street, :string
    add_column :startups, :suburb, :string
    add_column :startups, :state, :string
    add_column :startups, :postcode, :string
    add_column :startups, :country, :string
  end
end
