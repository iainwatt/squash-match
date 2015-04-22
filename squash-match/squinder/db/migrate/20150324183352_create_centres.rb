class CreateCentres < ActiveRecord::Migration
  def change
    create_table :centres do |t|
      t.string :name
      t.string :image
      t.string :location
      t.string :phone
      t.string :email
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
