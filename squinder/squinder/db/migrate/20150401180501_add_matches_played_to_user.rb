class AddMatchesPlayedToUser < ActiveRecord::Migration
  def change
    add_column :users, :matches_played, :integer
  end
end
