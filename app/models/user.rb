class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def name
    [first_name, last_name].join(' ')
  end
end
