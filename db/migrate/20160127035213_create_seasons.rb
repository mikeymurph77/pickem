class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.date :start_date, null: false
    end
  end
end
