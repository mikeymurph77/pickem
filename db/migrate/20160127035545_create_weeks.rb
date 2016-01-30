class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.datetime :start_date, null: false
    end

    add_index :weeks, :start_date, unique: true
  end
end
