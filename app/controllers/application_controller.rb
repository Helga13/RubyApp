class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def authorize
    unless Mentor.find_by(id: session[:mentor_id])
      redirect_to login_url, notice: 'Please log in'
    end
  end
end