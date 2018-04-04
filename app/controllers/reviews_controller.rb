class ReviewsController < ApplicationController
  def new
    # @restaurant = Restaurant.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # @restaurant = Restaurant.new(restaurant_params)
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save # if success
      redirect_to restaurant_path(@revi)
    else # if failure
      render :new
      # redirect_to :back
    end
  end


  private

  def review_params
    params.require(:review).permit(:content, :stars)
  end
end
