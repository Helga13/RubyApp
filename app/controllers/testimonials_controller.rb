class TestimonialsController < ApplicationController

  def index
  end

  def new
    @testimonial = Testimonial.new
  end

  def show
    @testimonial = Testimonial.find(params[:id])
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
    if @testimonial.save
      redirect_to @testimonial
    else
      render 'new'
    end
  end

  private

  def testimonial_params
    params.require(:testimonial).permit(:user_name, :feedback)
  end
end

