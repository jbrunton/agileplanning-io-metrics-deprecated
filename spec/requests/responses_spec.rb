require 'rails_helper'

RSpec.describe "Responses", type: :request do
  describe "GET /responses" do
    it "works! (now write some real specs)" do
      survey = create(:survey)
      get survey_responses_path(survey)
      expect(response).to have_http_status(200)
    end
  end
end
