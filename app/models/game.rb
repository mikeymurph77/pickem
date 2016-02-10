class Game < ActiveRecord::Base
  validates :week_id, presence: true
  validates :home_team, presence: true
  validates :away_team, presence: true
  validates :start_time, presence: true

  belongs_to :week
  belongs_to :home_team, class_name: "Team"
  belongs_to :away_team, class_name: "Team"
  belongs_to :winning_team, class_name: "Team"
end
