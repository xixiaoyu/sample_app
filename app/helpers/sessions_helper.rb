module SessionsHelper

  # 登录指定的用户
  def log_in(user)
    session[:user_id] = user.id
  end

  # 返回当前登录的用户 (如果有的话)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # 判断用户是否已经登录
  def logged_in?
    !current_user.nil?
  end

end