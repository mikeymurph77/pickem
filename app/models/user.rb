class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true, case_sensitive: false
  validates :password_digest, presence: true
  validates :username, presence: true, uniqueness: true, case_sensitive: false

  has_many :picks

  def name
    "#{first_name} #{last_name}"
  end
end
