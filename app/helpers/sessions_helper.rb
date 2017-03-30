module SessionsHelper
  def current_user
    @current_user ||= Player.find(session[:user_id]) if session[:user_id]
  end
end
