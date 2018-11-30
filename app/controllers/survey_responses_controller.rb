class SurveyResponsesController < ApplicationController
  def new
    @survey = Survey.find(params[:survey_id])
    @survey_response = @survey.survey_responses.build
  end
end
