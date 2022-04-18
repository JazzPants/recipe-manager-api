class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users, only: %i[id name]
  end

  def show
    if User.exists?(params[:id])
      user = User.find(params[:id])
      render json: user, only: %i[id name]
    else
      render json: { message: "No user exists with id: #{params[:id]}" }
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      puts "CHECK CHECK 1..2..3.. #{session[:user_id]}"
      render json: { status: :created, user: user }
    else
      render json: user.errors
    end

    # user = User.create!(user_params)
    # if user
    #   session[:user_id] = user.id
    #   render json: { status: :created, user: user }
    # else
    #   render json: { status: 500 }
    # end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
