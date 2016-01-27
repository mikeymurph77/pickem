class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :start_time, null: false
      t.belongs_to :week, class_name: 'Week', null: false
      t.belongs_to :home_team, class_name: 'Team', null: false
      t.belongs_to :away_team, class_name: 'Team', null: false
      t.belongs_to :winning_team, class_name: 'Team'
    end

    add_index :games, :week_id
    add_index :games, :home_team_id
    add_index :games, :away_team_id
    add_index :games, :winning_team_id
  end
end
