class AddDistToChallenge < ActiveRecord::Migration
  def change
    add_column :challenges, :dist, :string
  end
end
