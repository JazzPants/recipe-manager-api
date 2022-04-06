class Api::V1::RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
        render json: @restaurants
    end

    def show
        if @restaurant
          render json: @restaurant
        else
          render json: @restaurant.errors
        end
      end
        #new restaurant form is rendered in react app form
    #   def new
    #     @restaurant = Restaurant.new
    #   end

      def create
        @restaurant = Restaurant.new(restaurant_params)
    
    
        if @restaurant.save
          render json: @restaurant
        else
          render json: @restaurant.errors
        end
      end

#          edit form should be rendered in react app
#       def edit
#       end

      def update
        restaurant = Restaurant.find(params[:id])
        restaurant.update(restaurant_params)
        render json: restaurant
      end

      def destroy
        # @restaurant.destroy
        restaurant = Restaurant.find(params[:id])
        restaurant&.destroy
        render json: {notice: "Restaurant was succesfully removed."}
      end

      private
      def restaurant_params
        params.require(:restaurant).permit(:name, :description, :category, :location, :pricing)
      end

end