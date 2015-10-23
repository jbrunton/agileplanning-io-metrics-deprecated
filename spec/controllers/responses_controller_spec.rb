require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ResponsesController, type: :controller do

  let(:survey) { survey = create(:survey) }

  # This should return the minimal set of attributes required to create a valid
  # Response. As you add validations to Response, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    # TODO: why is this factory not assigning a survey_id?
    attributes_for(:response).merge(survey_id: survey.id)
  }

  let(:invalid_attributes) {
    attributes_for(:response).merge(survey: nil)
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ResponsesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all responses as @responses" do
      response = create(:response, survey: survey)
      get :index, {survey_id: survey.to_param}, valid_session
      expect(assigns(:responses)).to eq([response])
    end
  end

  describe "GET #new" do
    it "assigns a new response as @response" do
      get :new, {survey_id: survey.to_param}, valid_session
      expect(assigns(:response)).to be_a_new(Response)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Response" do
        expect {
          post :create, {survey_id: survey.to_param, :response => valid_attributes}, valid_session
        }.to change(Response, :count).by(1)
      end

      it "assigns a newly created response as @response" do
        post :create, {survey_id: survey.to_param, :response => valid_attributes}, valid_session
        expect(assigns(:response)).to be_a(Response)
        expect(assigns(:response)).to be_persisted
      end

      it "redirects to the survey responses" do
        post :create, {survey_id: survey.to_param, :response => valid_attributes}, valid_session
        expect(response).to redirect_to(survey_responses_path(survey))
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved response as @response" do
        post :create, {survey_id: survey.to_param, :response => invalid_attributes}, valid_session
        expect(assigns(:response)).to be_a_new(Response)
      end

      it "re-renders the 'new' template" do
        post :create, {survey_id: survey.to_param, :response => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

end
