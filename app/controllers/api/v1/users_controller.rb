class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def new; end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
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
