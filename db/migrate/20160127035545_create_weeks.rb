class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.date :start_date, null: false
    end
  end
end
