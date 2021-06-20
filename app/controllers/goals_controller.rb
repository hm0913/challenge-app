class GoalsController < ApplicationController

  def index
    @goals = Goal.where(user_id: current_user.id)
  end

  def new
    @goal = Goal.new
  end

  def create
    Goal.create(goal_params)
    redirect_to user_path(current_user.id)
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def goal_params
    params.require(:goal).permit(:name, :count, :deadline, :pass, :fail).merge(user_id: current_user.id)
  end
end