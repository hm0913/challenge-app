class ResultsController < ApplicationController
  def index
    @results = Result.where(user_id: current_user.id)
    @result_sum = Result.where(user_id: current_user).group(:name).sum(:count)
  end

  def new
    @result = Result.new
  end

  def create
    Result.create(result_params)
    redirect_to user_path(current_user.id)
  end

  def edit
    @result = Result.find(params[:id])
  end

  def update
    @result = Result.find(params[:id])
    @result.update(result_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    @result = Result.find(params[:id])
    @result.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def result_params
    params.require(:result).permit(:name, :count, :challenge_day, :goal_id, :user_id).merge(user_id: current_user.id)
  end
end
