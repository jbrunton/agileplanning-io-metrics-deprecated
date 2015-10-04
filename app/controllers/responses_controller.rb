class ResponsesController < ApplicationController
  before_action :set_survey, only: [:index, :new, :create]

  # GET /responses
  # GET /responses.json
  def index
    @responses = @survey.responses
    @questions = Question.all
  end

  # GET /responses/new
  def new
    @response = Response.build_for(@survey)
  end

  # POST /responses
  # POST /responses.json
  def create
    @response = Response.new(response_params)

    respond_to do |format|
      if @response.save
        format.html { redirect_to @survey, notice: 'Response was successfully created.' }
        format.json { render :show, status: :created, location: @response }
      else
        format.html { render :new }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

private

  # Never trust parameters from the scary internet, only allow the white list through.
  def response_params
    params.require(:response).permit(:survey_id,
        :answers_attributes => [:id, :answer, :question_id]
    )
  end

  def set_survey
    @survey = Survey.find(params[:survey_id])
  end

end
