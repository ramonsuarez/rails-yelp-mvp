class ReviewsController < ApplicationController

  def show
  end

  def new
    @review = Review.new
  end

  def create
      @review = @restaurant.reviews.build(review_params)
      @review.save
      redirect_to restaurant_path(@restaurant)

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = Review.find(params[:restaurant_id])
  end

end
