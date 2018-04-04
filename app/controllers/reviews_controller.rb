class ReviewsController < ApplicationController
  def new
    # @restaurant = Restaurant.new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    # @restaurant = Restaurant.new(restaurant_params)
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save # if success
      redirect_to restaurant_path(@restaurant)
    else # if failure
      render :new
      # redirect_to :back
    end
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
