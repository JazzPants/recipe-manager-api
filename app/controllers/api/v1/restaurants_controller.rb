class Api::V1::RestaurantsController < ApplicationController
  #GET fetch /restaurants
  def index
    restaurants = Restaurant.all
    render json: restaurants
  end

  #GET fetch with Restaurant id in URL
  def show
    if Restaurant.exists?(params[:id])
      restaurant = Restaurant.find(params[:id])
      render json: restaurant
    else
      render json: { message: "No restaurant exists with id: #{params[:id]}" }
    end
  end

  #new restaurant form is rendered in react app form
  #   def new
  #     @restaurant = Restaurant.new
  #   end

  #POST fetch
  def create
    restaurant = Restaurant.new(restaurant_params)

    if restaurant.save
      render json: restaurant
    else
      render json: restaurant.errors
    end
  end

  #          edit form should be rendered in react app
  #       def edit
  #       end

  #PATCH fetch
  def update
    restaurant = Restaurant.find(params[:id])

    restaurant.update(restaurant_params)
    render json: restaurant
  end

  #DELETE fetch
  def destroy
    # @restaurant.destroy
    restaurant = Restaurant.find(params[:id])
    restaurant&.destroy
    render json: { notice: 'Restaurant was succesfully removed.' }
  end

  private

  def restaurant_params
    params
      .require(:restaurant)
      .permit(:name, :description, :category, :location, :pricing, :user_id)
  end
end
