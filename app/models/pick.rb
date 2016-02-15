class Pick < ActiveRecord::Base
  validates :user_id, presence: true
  validates :game_id, presence: true

  belongs_to :user
  belongs_to :game
  belongs_to :team
end
