class AddFormToUser < ActiveRecord::Migration
  def change
    add_column :users, :form, :string
  end
end
