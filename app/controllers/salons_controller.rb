class SalonsController < ApplicationController
  def index
    @salons = Salon.all
  end

  def show
    @salon = Salon.find(params[:id])
    @review = Review.new
    @reviews = @salon.reviews.includes(:user).order(created_at: :desc)
  end
end
