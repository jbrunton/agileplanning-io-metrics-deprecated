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

RSpec.describe SurveysController, type: :controller do
  let(:invalid_attributes) {
    { title: '' }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SurveysController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all surveys as @surveys" do
      survey = create(:survey)
      get :index, {}, valid_session
      expect(assigns(:surveys)).to eq([survey])
    end
  end

  describe "GET #show" do
    it "assigns the requested survey as @survey" do
      survey = create(:survey)
      get :show, {:id => survey.to_param}, valid_session
      expect(assigns(:survey)).to eq(survey)
    end
  end

  describe "GET #new" do
    it "assigns a new survey as @survey" do
      get :new, {}, valid_session
      expect(assigns(:survey)).to be_a_new(Survey)
    end
  end

  describe "GET #edit" do
    it "assigns the requested survey as @survey" do
      survey = create(:survey)
      get :edit, {:id => survey.to_param}, valid_session
      expect(assigns(:survey)).to eq(survey)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Survey" do
        expect {
          post :create, {:survey => attributes_for(:survey)}, valid_session
        }.to change(Survey, :count).by(1)
      end

      it "assigns a newly created survey as @survey" do
        post :create, {:survey => attributes_for(:survey)}, valid_session
        expect(assigns(:survey)).to be_a(Survey)
        expect(assigns(:survey)).to be_persisted
      end

      it "redirects to the created survey" do
        post :create, {:survey => attributes_for(:survey)}, valid_session
        expect(response).to redirect_to(Survey.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved survey as @survey" do
        post :create, {:survey => invalid_attributes}, valid_session
        expect(assigns(:survey)).to be_a_new(Survey)
      end

      it "re-renders the 'new' template" do
        post :create, {:survey => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested survey" do
        survey = create(:survey)
        put :update, {:id => survey.to_param, :survey => new_attributes}, valid_session
        survey.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested survey as @survey" do
        survey = create(:survey)
        put :update, {:id => survey.to_param, :survey => attributes_for(:survey)}, valid_session
        expect(assigns(:survey)).to eq(survey)
      end

      it "redirects to the survey" do
        survey = create(:survey)
        put :update, {:id => survey.to_param, :survey => attributes_for(:survey)}, valid_session
        expect(response).to redirect_to(survey)
      end
    end

    context "with invalid params" do
      it "assigns the survey as @survey" do
        survey = create(:survey)
        put :update, {:id => survey.to_param, :survey => invalid_attributes}, valid_session
        expect(assigns(:survey)).to eq(survey)
      end

      it "re-renders the 'edit' template" do
        survey = create(:survey)
        put :update, {:id => survey.to_param, :survey => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested survey" do
      survey = create(:survey)
      expect {
        delete :destroy, {:id => survey.to_param}, valid_session
      }.to change(Survey, :count).by(-1)
    end

    it "redirects to the surveys list" do
      survey = create(:survey)
      delete :destroy, {:id => survey.to_param}, valid_session
      expect(response).to redirect_to(surveys_url)
    end
  end

end
