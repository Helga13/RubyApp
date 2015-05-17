class Student < ActiveRecord::Base
  validates :github_user, presence: true, uniqueness: true
end
