class ResultsController < ApplicationController
  def index
    @result = Result.all
  end

  def new
    @result = Result.new
  end

  def create
    Result.create(result_params)
    redirect_to results_path
  end

  private

  def result_params
    params.require(:result).permit(:name, :count, :challenge_day)
  end
end
