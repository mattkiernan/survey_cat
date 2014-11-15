class TextStylesController < ApplicationController
  def new
    @survey = load_survey_from_url
    @text_style = TextStyle.new
  end

  def create
    @text_style = TextStyle.new(style_params)
    @survey = load_survey_from_url
    if @text_style.save
      @survey.questions.create(style: @text_style)
      redirect_to survey_path(@survey)
    else
      render :new
    end
  end

  def edit
    @text_style = load_text_style_from_url
    @survey = load_survey_from_url
  end

  def update
    @survey = load_survey_from_url
    @text_style = load_text_style_from_url
    if @text_style.update(style_params)
      redirect_to @survey
    else
      render :edit
    end
  end

  def style_params
    params.require(:text_style).permit(:body)
  end

  def load_survey_from_url
    Survey.find(params[:survey_id])
  end

  def load_text_style_from_url
    TextStyle.find(params[:id])
  end
end
