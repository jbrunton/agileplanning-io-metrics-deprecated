require 'rails_helper'

RSpec.describe "Teams", type: :request do
  describe "GET /teams" do
    it "works! (now write some real specs)" do
      get teams_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /teams/1/trends" do
    it "returns a 200" do
      get trends_team_path(create(:team))
      expect(response).to have_http_status(200)
    end
  end
end
