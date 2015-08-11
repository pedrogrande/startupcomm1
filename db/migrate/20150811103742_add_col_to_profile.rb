class AddColToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :reputation_points, :integer
  end
end
