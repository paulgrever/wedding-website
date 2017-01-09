class QuizController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:new]
  def index
    @quizzes_taken = Quiz.been_taken?
    if @quizzes_taken
      @quiz_results = Quiz.order(score: :desc)
    end
  end
  
  def new
    
  end
end
