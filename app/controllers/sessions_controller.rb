class SessionsController < ApplicationController
  def new
  end

  def create
    mentor = Mentor.find_by(name: params[:name])
    if mentor and mentor.authenticate(params[:password])
      session[:mentor_id] = mentor.id
      redirect_to mentor_url
    else
      redirect_to login_url, alert: 'Invalid username or password'
    end
  end

  def destroy
    session[:mentor_id] = nil
    redirect_to root_url
  end
end
