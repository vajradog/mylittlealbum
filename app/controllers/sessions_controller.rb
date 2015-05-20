class SessionsController < ApplicationController

  def new
    redirect_to photos_path
  end

  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "You are now signed in"
      redirect_to photos_path
    else
      redirect_to root_path
      flash[:error] = "Something wrong with your email or password"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You are signed out"
    redirect_to root_path
  end
end