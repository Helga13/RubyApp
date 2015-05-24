class Mentor < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true, uniqueness: true
  validates :password, length: { minimum: 8 }
end
