class SurveysController < ApplicationController
  before_action :require_login

  def index
    @surveys = current_user.surveys
  end
end
