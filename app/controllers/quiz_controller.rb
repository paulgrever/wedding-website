class QuizController < ApplicationController
  # skip_before_action :verify_authenticity_token, only: [:create]
  
  def index
    @quizzes_taken = Quiz.been_taken?
    if @quizzes_taken
      @quiz_results = Quiz.order(score: :desc)
    end
  end

  def create
    Quiz.create(quiz_params)
    redirect_to quiz_path
  end


  private

  def quiz_params
    params.require(:quiz).permit(:name, :message, :score)
  end
end
