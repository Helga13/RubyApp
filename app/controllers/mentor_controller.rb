class MentorController < ApplicationController

  before_action :authorize

  def index
    @mentor = Mentor.find_by(id: session[:mentor_id])
    @courses = @mentor.courses
  end
end

