class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :username, uniqueness: true,presence: true, length: { in: 4..32 }
  validates :email, uniqueness: true,presence: true, length: { maximum: 140 },format: {with: VALID_EMAIL_REGEX}
  validates :password, presence: true, length: {maximum: 50 }
end
