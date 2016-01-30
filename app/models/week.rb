class Week < ActiveRecord::Base
  validates :start_date, presence: true, uniqueness: true
<<<<<<< HEAD

  has_many :games
  belongs_to :season
=======
>>>>>>> Add indexes to start_date in Season and Week
end
