require 'rails_helper'

RSpec.describe Response, type: :model do
  before(:each) { @question = create(:question) }
  let(:survey) { create(:survey) }

  describe ".build_for" do
    let(:response) { Response.build_for(survey) }

    it "returns a new Response with answers for each question" do
      expect(response.answers.map{ |answer| answer.question }).to eq([@question])
    end

    it "builds the response for the survey" do
      expect(response.survey).to eq(survey)
    end
  end

  describe "questions" do
    let(:response) { Response.build_for(survey) }

    it "returns the questions for the given answers" do
      expect(response.questions).to eq([@question])
    end
  end
end
