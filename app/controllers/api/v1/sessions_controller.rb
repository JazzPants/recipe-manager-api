class Api::V1::SessionsController < ApplicationController
  include CurrentUserConcern

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
    puts "session #{session[:user_id]}"
    if @_current_user
      puts "TESTING CURRENT USER: #{@_current_user.name}"
      render json: { logged_in: true, user: @_current_user }
    else
      render json: { logged_in: false, user: @_current_user }
    end
  end

  def logout
    puts "TESTING CURRENT USER: #{@_current_user.name}"

    # reset_session works asynchronously?
    reset_session
    puts "logging out #{@_current_user.name}!!!"
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
