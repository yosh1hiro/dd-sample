class SessionsController < ApplicationController
  skip_before_action :authenticate_user
  skip_before_action :admin_user

  def new
    respond_to do |format|
      format.html
      format.json { head 200 }
    end
  end

  def create
    user = User.authenticate_user(params.permit(:email, :password))
    if user
      session[:user_id] = user.id
      cookies.permanent.signed[:user_id] = user.id
      cookies.permanent.signed[:auto_login_token] = user.auto_login_token unless /^admin\./ =~ user.name
      flash.notice = 'ログインしました。'
      respond_to do |format|
        format.html { redirect_to :root }
        format.json { head 200 }
      end
    else
      flash.alert = 'メールアドレスまたはパスワードが正しくありません。'
      respond_to do |format|
        format.html { redirect_to :root }
        format.json { head 401 }
      end
    end
  end

  def destroy
    session.delete :user_id
    cookies.delete :user_id
    cookies.delete :auto_login_token
    respond_to do |format|
      format.html { redirect_to :root, :notice => 'ログアウトしました。' }
      format.json { head :no_content }
    end
  end
end
