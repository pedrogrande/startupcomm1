class AddColsToStartup < ActiveRecord::Migration
  def change
    add_column :startups, :latitude, :float
    add_column :startups, :longitude, :float
  end
end
