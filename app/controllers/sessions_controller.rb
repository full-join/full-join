class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_email(session_params[:email])
    if user&.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash.now[:danger] = 'Invalid email and/or password. Please try again :)'
      render :new
    end
  end
  def destroy
    logout_current_user
    redirect_to root_url
  end
  private
  def session_params
      params.require(:session).permit(:email, :password)
  end
end
