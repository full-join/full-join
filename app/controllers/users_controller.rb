class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
  end
  def create
  @user = User.create!(user_params)
  redirect_to user_path(@user)
  end
  private
  def user_params
    params.require(:user).permit(:hackeralias, :name, :email, :password)
  end
end
