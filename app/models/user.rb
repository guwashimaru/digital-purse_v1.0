class User < ApplicationRecord
  validates :user_id, presence: true, uniqueness: {case_sensitive: true}
  validates :password, presence: true
end
