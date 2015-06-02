class TestimonialsController < ApplicationController

  respond_to :json

  before_action :authorize, only: :destroy

  def index
    @testimonials = Testimonial.order("id DESC").all
  end

  def show
    @testimonial = Testimonial.find(params[:id])
  end

  def create
    @testimonial = Testimonial.create(testimonial_params)
    respond_with @testimonial
  end

  def destroy
    Testimonial.find(params[:id]).destroy
    redirect_to testimonials_url
  end

  private

  def testimonial_params
    params.require(:testimonial).permit(:user_name, :feedback)
  end
end




