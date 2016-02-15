class AddStartDateIndexToWeek < ActiveRecord::Migration
  def change
    add_index :weeks, :start_date, unique: true
  end
end
