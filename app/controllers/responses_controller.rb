class ResponsesController < ApplicationController
  def new
    @survey = load_survey_from_url
    @questions = @survey.questions
    @response = Response.new
    @answer = @response.answers.new
  end

  def create
    @survey = load_survey_from_url
    @response = @survey.responses.new(response_params)
    if @response.save
      redirect_to surveys_path
    else
      render :new
    end
  end

  def index
    @survey = load_survey_from_url
    @responses = @survey.responses
  end

  def show
    @response = load_response_from_url
  end

  private

  def load_survey_from_url
    Survey.find(params[:survey_id])
  end

  def response_params
    params.require(:response).permit(:survey_id, answers_attributes:[:id, :question_id, :body, :multi_choice_option_id])
  end

  def load_response_from_url
    Response.find(params[:id])
  end
end
