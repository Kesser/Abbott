class Api::V1::QuestionsController < Api::ApiController
  def index
    @questions = Question.where(private: false)
    #render json: @first_question
  end
end
