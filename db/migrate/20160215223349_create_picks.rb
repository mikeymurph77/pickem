class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.belongs_to :user, null: false
      t.belongs_to :game, null: false
      t.belongs_to :team
    end

    add_index :picks, :user_id
    add_index :picks, :game_id
    add_index :picks, :team_id
  end
end
