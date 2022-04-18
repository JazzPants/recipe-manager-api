class Api::V1::RatingsController < ApplicationController
  def index
    puts "HELLO HELLO RESTAURANT ID: #{params[:restaurant_id]}"
    if Rating.exists?(restaurant_id: params[:restaurant_id])
      ratings = Rating.where(restaurant_id: params[:restaurant_id])
      render json: rating
    else
      render json: []
    end
  end

  def show
    if Rating.exists?(params[:id])
      rating = Rating.find(params[:id])
      render json: rating
    else
      render json: {
               message:
                 "No rating exists with id: #{params[:id]} for restaurant with id: #{params[:restaurant_id]}",
             }
    end
  end

  def create
    rating = Rating.new(rating_params)

    if rating.save
      render json: rating
    else
      render json: rating.errors
    end
  end

  def update
    rating = Rating.find(params[:id])

    rating.update(rating_params)
    render json: rating
  end

  private

  def rating_params
    params.require(:rating).permit(:value, :user_id, :restaurant_id)
  end
end
