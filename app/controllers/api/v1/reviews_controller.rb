class Api::V1::ReviewsController < ApplicationController
  def index
    puts "HELLO HELLO RESTAURANT ID: #{params[:restaurant_id]}"
    puts "HELLO HELLO USER ID: #{params[:user_id]}"
    if params[:restaurant_id] &&
         Review.exists?(restaurant_id: params[:restaurant_id])
      reviews = Review.where(restaurant_id: params[:restaurant_id])
      render json: reviews, only: %i[id content user_id restaurant_id]
    elsif params[:user_id] && Review.exists?(user_id: params[:user_id])
      reviews = Review.where(user_id: params[:user_id])
      render json: reviews, only: %i[id content user_id restaurant_id]
    else
      render json: []
    end
  end

  # def show
  #   if Review.exists?(params[:id])
  #     review = Review.find(params[:id])
  #     render json: review
  #   else
  #     render json: {
  #              message:
  #                "No review exists with id: #{params[:id]} for restaurant with id: #{params[:restaurant_id]}",
  #            }
  #   end
  # end

  def create
    review = Review.new(review_params)

    if review.save
      render json: review
    else
      render json: review.errors
    end
  end

  def update
    review = Review.find(params[:id])

    review.update(review_params)
    render json: review
  end

  private

  def review_params
    params.require(:review).permit(:content, :user_id, :restaurant_id)
  end
end
