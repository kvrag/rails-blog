module ApplicationHelper

  def log_in(args = {})
    user = User.find_by_email(args[:email])
    if user.nil?
      false
    elsif user.password == args[:password]
      session[:user_id] = user.id
      true
    end
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    current_user != nil
  end
end
