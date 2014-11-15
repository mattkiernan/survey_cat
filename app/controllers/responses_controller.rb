class ResponsesController < ApplicationController
  def new
    @survey = load_survey_from_url
    @response = Response.new
    @questions = @survey.questions
  end

  private

  def load_survey_from_url
    Survey.find(params[:survey_id])
  end
end
