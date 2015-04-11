module SessionsHelper

  def sign_in(user)
    auto_login_token = User.new_auto_login_token
    cookies.permanent[:auto_login_token] = auto_login_token
    user.update_attribute(:auto_login_token, User.encrypt(auto_login_token))
    self.current_user = user
  end
  
  def signed_in_user
    unless signed_in?
      store_location
      redirect_to new_session_url, notice: "ログインしてください"
    end
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:auto_login_token)
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    auto_login_token = User.encrypt(cookies[:auto_login_token])
    @current_user ||= User.find_by(auto_login_token: auto_login_token)
  end

  def current_user?(user)
    user == current_user
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url
  end

end
