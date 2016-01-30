class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.datetime :start_date, null: false
    end

    add_index :seasons, :start_date, unique: true
  end
end
