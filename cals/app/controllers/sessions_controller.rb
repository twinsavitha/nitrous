class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.authenticate(params[:name], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"# page after login
    else
      flash.now.alert = "Invalid name or password"
      render "new"  #gets back to  the login page.
    end
  end

  def destroy # wen cald fa logout
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!" #pg after log out
  end
end
