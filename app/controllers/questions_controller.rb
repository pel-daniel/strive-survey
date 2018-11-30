class QuestionsController < ApplicationController
  def show
    @survey_response = SurveyResponse.includes(:survey).find(params[:survey_response_id])
    @survey = Survey.includes(:questions).find(@survey_response.survey.id)
    @question = @survey.questions[params[:id].to_i]

    @answer = Answer.new
  end

  def answers
    @survey_response = SurveyResponse.includes(:survey).find(params[:survey_response_id])
    @survey = Survey.includes(:questions).find(@survey_response.survey.id)
    @question = Question.find(params[:question_id])
    question_index = @survey.questions.index { |question| question.id == @question.id }

    @answer = Answer.new(answer_params)
    @answer.survey_response = @survey_response
    @answer.question = @question

    if @answer.save
      redirect_to survey_response_question_path(@survey_response.id, question_index + 1)
    else
      render :show
    end
  end


  private

  def answer_params
    params.require(:answer).permit(:text)
  end
end
