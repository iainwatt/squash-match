class AddDistToCourt < ActiveRecord::Migration
  def change
    add_column :courts, :dist, :string
  end
end
