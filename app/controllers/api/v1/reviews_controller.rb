class Api::V1::ReviewsController < ApplicationController
  def index
    reviews = Review.all
    render json: reviews
  end

  def show
    review = Review.find(params[:id])
    if review
      render json: review
    else
      render json: review.errors
    end
  end

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
