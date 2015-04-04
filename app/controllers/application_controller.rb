class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

#  before_action :authenticate_user

  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    elsif cookies.signed[:user_id]
      id = cookies.signed[:user_id]
      token = cookies.signed[:auto_login_token]
      @current_user ||= User.where(id: id).where(auto_login_token: token).first
    end
    @current_user
  end

  def authenticate_user
    redirect_to [:new, :session] if current_user.nil?
  end

  def admin_user
    redirect_to [:new, :session] if current_user.nil? || !current_user.name.start_with?('admin.')
  end

  def doctor
    redirect_to [:new, :session] if current_user.nil? || current_user.doctor == false
  end

  def logout
    session.delete :user_id
    @current_user = nil
  end

end
