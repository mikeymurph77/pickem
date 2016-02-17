class Pick < ActiveRecord::Base
  validates :user, presence: true
  validates :game, presence: true

  belongs_to :user
  belongs_to :game
  belongs_to :team
end
