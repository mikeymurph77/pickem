class Team < ActiveRecord::Base
  validates :week_id, presence: true
  validates :home_team_id, presence: true
  validates :away_team_id, presence: true
end
