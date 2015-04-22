class AddCourtIdToChallenge < ActiveRecord::Migration
  def change
    add_column :challenges, :court_id, :integer
  end
end
