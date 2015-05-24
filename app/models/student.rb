class Student < ActiveRecord::Base
  belongs_to :course

  has_one :mentor, through: :course

  validates :github_user, presence: true, uniqueness: true
end
