class MultiChoiceStylesController < ApplicationController
  def new
    @survey = load_survey_from_url
    @multi_choice_style = MultiChoiceStyle.new
  end

  def create
    @survey = load_survey_from_url
    @multi_choice_style = MultiChoiceStyle.new(style_params)
    if @multi_choice_style.save
      @survey.questions.create(style: @multi_choice_style)
      redirect_to survey_path(@survey)
    end
  end

  private

  def load_survey_from_url
    Survey.find(params[:survey_id])
  end

  def style_params
    params.require(:multi_choice_style).permit(:body)
  end
end
