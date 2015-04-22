class AddUserIdToCourt < ActiveRecord::Migration
  def change
    add_column :courts, :user_id, :integer
  end
end
