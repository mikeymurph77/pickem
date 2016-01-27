class Season < ActiveRecord::Base
  validates :start_date, presence: true, uniqueness: true
end
