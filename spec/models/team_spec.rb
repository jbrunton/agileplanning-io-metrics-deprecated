require 'rails_helper'

RSpec.describe Team, type: :model do
  let(:team) { create(:team) }
  let(:survey) { create(:survey, team: team) }
  let(:question) { create(:question) }
  describe ".trend_for" do
    it 'knows trends on its questions' do
      expect(team.trend_for(question)).to eq([])
    end
  end
end
