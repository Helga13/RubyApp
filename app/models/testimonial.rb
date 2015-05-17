class Testimonial < ActiveRecord::Base
  validates :user_name, :feedback, presence: true
end
