class QuestionsController < ApplicationController
  def show
    @survey_response = SurveyResponse.find(params[:survey_response_id])
    @survey = Survey.includes(:questions).find(@survey_response.survey.id)
    @question = @survey.questions[params[:id].to_i]

    @answer = Answer.new
  end
end
