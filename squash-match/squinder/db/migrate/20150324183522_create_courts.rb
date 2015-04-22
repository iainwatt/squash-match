class CreateCourts < ActiveRecord::Migration
  def change
    create_table :courts do |t|
      t.integer :centre_id
      t.string :time
      t.string :court_no
      t.string :availability

      t.timestamps null: false
    end
  end
end
