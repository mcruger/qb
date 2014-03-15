class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to root_url #, notice: "Goodbye."
  end

  def create
    user_id = params[:email]

    user = User.find_by(email: user_id)
    if user
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        session[:username] = user.username
        redirect_to show_lobbys_url #, notice: "Welcome Back, #{user.username}"
      else
        redirect_to root_url #, notice: "Bad Password"
      end
    else
       redirect_to root_url #, notice: "Unknown Email Address"
    end
  end

end
