class SurveysController < ApplicationController
  before_action :require_login

  def index
    @surveys = current_user.surveys
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to @survey
    else
      render :new
    end
  end

  def show
    @survey = load_survey_from_url
  end

  private

  def survey_params
    params.require(:survey).permit(:body, :description)
  end

  def load_survey_from_url
    Survey.find(params[:id])
  end
end
