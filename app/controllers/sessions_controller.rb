class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      log_in user
      redirect_to user_path(current_user.id)
    else
      render "new"
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_path
  end

  def guest_sign_in
    user = User.guest
    log_in user
    redirect_to root_path, notice: "ゲストユーザーとしてログインしました。"
  end

end