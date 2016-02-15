class AddStartDateIndexToSeason < ActiveRecord::Migration
  def change
    add_index :seasons, :start_date, unique: true
  end
end
