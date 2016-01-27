class Team < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  def city_and_name
    "#{location} #{name}"
  end
end
