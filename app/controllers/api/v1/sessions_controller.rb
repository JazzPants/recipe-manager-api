class Api::V1::SessionsController < ApplicationController
  include CurrentUserConcern
  def new; end

  def create
    user = User.find_by(name: params[:user][:name])
    puts "THESE ARE THE PARAMS: #{params}!!!"
    user = user.try(:authenticate, params[:user][:password])

    # @user = user

    if user
      session[:user_id] = user.id
      puts "New session id: #{session[:user_id]}"
      render json: { status: :created, logged_in: true, user: user }
    else
      puts "CHECK CHECK 1..2..3.. #{session[:user_id]}"
      render json: {
               status: 401,
               message:
                 "#{params[:name]} does not exist, or password is incorrect.",
             }
    end
  end

  def logged_in
    if @current_user
      render json: { logged_in: true, user: @current_user }
    else
      render json: { logged_in: false }
    end
  end

  def logout
    reset_session
    render json: { status: 200, logged_out: true }
  end

  def destroy
    session.delete :user_id
  end

  # private

  # def user_params
  #   params.require(:user).permit(:name, :password, :password_confirmation)
  # end
end
