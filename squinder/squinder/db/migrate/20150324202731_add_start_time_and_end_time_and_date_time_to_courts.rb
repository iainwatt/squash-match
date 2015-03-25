class AddStartTimeAndEndTimeAndDateTimeToCourts < ActiveRecord::Migration
  def change
    add_column :courts, :start_time, :time
    add_column :courts, :end_time, :time
    add_column :courts, :date_time, :datetime
  end
end
