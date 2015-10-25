require 'rails_helper'

RSpec.describe Survey, type: :model do
  describe "#questions" do
    it "enumerates the questions used by the survey" do
      question = create(:question)
      survey = create(:survey)
      create(:response, survey: survey)

      expect(survey.questions).to eq([question])
    end
  end
end
