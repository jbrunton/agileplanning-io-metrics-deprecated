require 'rails_helper'

RSpec.describe "Surveys", type: :request do
  let(:team) { create(:team) }

  describe "GET /team/:team_id/surveys" do
    it "works! (now write some real specs)" do
      get team_surveys_path(team)
      expect(response).to have_http_status(200)
    end
  end
end
