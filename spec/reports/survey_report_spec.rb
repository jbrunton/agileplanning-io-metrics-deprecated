require 'rails_helper'

RSpec.describe SurveyReport do
  before(:each) { @question = create(:question) }
  let(:survey) { create(:survey) }

  describe "#questions" do
    it "eumerates the questions used by the survey" do
      create(:response, survey: survey)
      create(:response, survey: survey)

      report = SurveyReport.new(survey)
      create(:question)

      # only the questions used in the survey response
      expect(report.questions).to eq([@question])
    end
  end

  describe "#answers_for" do
    it "returns the answers for the question" do
      answer = create(:answer, question: @question)
      response = create(:response, survey: survey, answers: [answer])

      report = SurveyReport.new(survey)

      expect(report.answers_for(@question)).to eq([answer])
    end

    it "returns the answers in the order of the responses" do
      second_answer = create(:answer, question: @question, answer: 'good')
      second_response = create(:response, survey: survey, answers: [second_answer], created_at: 1.days.ago)
      first_answer = create(:answer, question: @question, answer: 'meh')
      first_response = create(:response, survey: survey, answers: [first_answer], created_at: 2.day.ago)

      report = SurveyReport.new(survey)

      expect(report.answers_for(@question)).to eq([first_answer, second_answer])
    end
  end

  describe "#aggregate_rating_for" do
    it "returns the aggregate rating for the question" do
      first_answer = create(:answer, question: @question, answer: 'good')
      second_answer = create(:answer, question: @question, answer: 'meh')
      response = create(:response, survey: survey, answers: [first_answer, second_answer])

      report = SurveyReport.new(survey)

      expected_rating = 0.75 # 'good' = 1.0, 'meh' = 0.5, expecting average of these
      expect(report.aggregate_rating_for(@question)).to eq(expected_rating)
    end
  end
end
