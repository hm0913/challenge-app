class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    elsif
      render action: "new"
    end
  end

  def show
    @user = User.find(params[:id])
    @result_sum = Result.where(user_id: current_user).group(:name).sum(:count)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  
end
