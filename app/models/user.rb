class User < ApplicationRecord
  validates :user_id, presence: true, uniqueness: {case_sensitive: true}
  validates :password, presence: true, length: {minimum:6}
  has_secure_password

end
