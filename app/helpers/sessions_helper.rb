module SessionsHelper
  def current_user
    if session[:login_id]
      @current_user ||= User.find_by(id: session[:login_id])
    end
  end
  def logged_in?
    !session[:login_id].nil?
  end
end
