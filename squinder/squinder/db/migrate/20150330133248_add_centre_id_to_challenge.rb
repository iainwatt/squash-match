class AddCentreIdToChallenge < ActiveRecord::Migration
  def change
    add_column :challenges, :centre_id, :integer
  end
end
