class Api::V1::SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:name])

    user = user.try(:authenticate, params[:password])

    # @user = user

    if user
      session[:user_id] = user.id
      puts "New session id: #{session[:user_id]}"
      render json: user
    else
      render json: "#{params[:name]} does not exist, or password is incorrect."
    end
  end

  def destroy
    session.delete :user_id
  end
end
