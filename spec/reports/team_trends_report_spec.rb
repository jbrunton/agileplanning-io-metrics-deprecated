require 'rails_helper'

RSpec.describe TeamTrendsReport do
  before(:each) { @question = create(:question) }
  let(:team) { create(:team) }
  let(:survey) { create(:survey, team: team) }

  describe "#questions" do
    it "eumerates the questions from the responses" do
      create(:response, survey: survey)
      report = TeamTrendsReport.new(team)
      expect(report.questions).to eq([@question])
    end
  end

  describe "#surveys" do
    it "enumerates the surveys for the team" do
      report = TeamTrendsReport.new(team)
      expect(report.surveys).to eq([survey])
    end

    it "orders the surveys by date created" do
      skip("TODO: implement this")
    end
  end

  describe "#aggregate_rating_for" do
    it "returns the aggregate rating for the given question and survey" do
      answer = create(:answer, question: @question)
      create(:response, survey: survey, answers: [answer])
      report = TeamTrendsReport.new(team)
      expect(report.aggregate_rating_for(@question, survey)).to eq(answer.rating)
    end
  end
end
