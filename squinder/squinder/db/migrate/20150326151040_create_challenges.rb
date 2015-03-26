class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :player1_id
      t.integer :player2_id
      t.string :status

      t.timestamps null: false
    end
  end
end
