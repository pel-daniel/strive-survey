class SurveyResponsesController < ApplicationController
  def new
    @survey = Survey.find(params[:survey_id])
    @survey_response = @survey.survey_responses.build
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @survey_response = SurveyResponse.new(survey_response_params)
    @survey_response.survey = @survey

    if @survey_response.save
      head :created
    else
      flash.now[:notice] = 'Please enter your email'
      render :new
    end
  end


  private

  def survey_response_params
    params.require(:survey_response).permit(:email)
  end
end
