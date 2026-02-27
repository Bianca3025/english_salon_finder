class ReviewsController < ApplicationController
  def create
    review = current_user.reviews.build(review_params)
    if review.save
      redirect_to salon_path(review.salon)
    else
      redirect_to salon_path(review.salon)
    end
  end

  private

  def review_params
    params.require(:review).permit(:content).merge(salon_id: params[:salon_id])
  end
end
