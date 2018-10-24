class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id].to_i)
    @review = Review.new(restaurant_id: @restaurant.id)
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id].to_i)
    @review.restaurant = @restaurant
    @review.save
    
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
  	  render :new
  	end

  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end
