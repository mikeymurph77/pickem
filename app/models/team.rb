class Team < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  has_many :home_teams, class_name: 'Game', foreign_key: 'home_team_id'
  has_many :away_teams, class_name: 'Game', foreign_key: 'away_team_id'

  def location_and_name
    "#{location} #{name}"
  end
end
