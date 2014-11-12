class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    # redirect_to restaurants_path
  end

  def show
    @review = Review.find(params[:id])
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
