class SessionsController < ApplicationController

  skip_before_action :signed_in_user, only: [:new, :create]

  def new
    respond_to do |format|
      format.html
      format.json { head 200 }
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      flash.notice = 'ログインしました。'
      respond_to do |format|
        format.html { redirect_to user }
        format.json { head 200 }
      end
    else
      flash.alert = 'メールアドレスまたはパスワードが正しくありません。'
      respond_to do |format|
        format.html { redirect_to signin_path }
        format.json { head 401 }
      end
    end
  end

  def destroy
    sign_out
    respond_to do |format|
      format.html { redirect_to :root, :notice => 'ログアウトしました。' }
      format.json { head :no_content }
    end
  end
end
