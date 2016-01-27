class Game < ActiveRecord::Base
  validates :week_id, presence: true
  validates :home_team_id, presence: true
  validates :away_team_id, presence: true
  validates :start_time, presence: true

  belongs_to :week
end
