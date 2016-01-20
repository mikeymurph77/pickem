class Team < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :city, presence: true

  def city_and_name
    "#{city} #{name}"
  end
end
