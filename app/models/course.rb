class Course < ActiveRecord::Base
  has_many :students

  belongs_to :mentor

  validates :name, presence: true, uniqueness: true
end
