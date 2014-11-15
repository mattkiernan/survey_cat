class SurveysController < ApplicationController
  before_action :require_login

  def index
    @surveys = current_user.surveys
  end

  def new
    @survey = current_user.surveys.new
  end

  def create
    @survey = current_user.surveys.new(survey_params)
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
    params.require(:survey).permit(:name, :description)
  end

  def load_survey_from_url
    Survey.find(params[:id])
  end
end
