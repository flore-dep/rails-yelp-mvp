class ReviewsController < ApplicationController

  def new
    set_restaurant
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = set_restaurant
    @review.save

    if @review.valid?
      redirect_to restaurant_path(set_restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
