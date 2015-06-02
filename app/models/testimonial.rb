class Testimonial < ActiveRecord::Base
  validates :user_name, :feedback, presence: true
  before_save :censorship

  private

  def censorship
    if feedback =~ /\bshit\b/
      self.feedback = feedback.downcase.gsub! /\bshit\b/, 'fun'
    end
  end
end