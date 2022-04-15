class Api::V1::ReviewsController < ApplicationController
  def index
    puts "HELLO HELLO RESTAURANT ID: #{params[:restaurant_id]}"
    if Review.exists?(restaurant_id: params[:restaurant_id])
      reviews = Review.where(restaurant_id: params[:restaurant_id])
      render json: reviews
    else
      render json: []

      # {
      #          message:
      #            "No reviews exist for restaurant with id: #{params[:restaurant_id]}",
      #        }
    end
  end

  # return restaurant doesnt exist

  def show
    if Review.exists?(params[:id])
      review = Review.find(params[:id])
      render json: review
    else
      render json: {
               message:
                 "No review exists with id: #{params[:id]} for restaurant with id: #{params[:restaurant_id]}",
             }
    end
  end

  # def show
  #   if Restaurant.exists?(params[:id])
  #     restaurant = Restaurant.find(params[:id])
  #     render json: restaurant
  #   else
  #     render json: { message: "No restaurant exists with id: #{params[:id]}" }
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
