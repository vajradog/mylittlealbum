class UsersController < ApplicationController

  def new
    redirect_to photos_path if current_user
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to photos_path, notice: "Account created successfully"
    else
      flash[:error] = "Could not create account. All fields are required"
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :full_name, :password)
  end
end