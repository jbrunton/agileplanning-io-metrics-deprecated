require 'rails_helper'

RSpec.describe Response, type: :model do
  describe ".build" do
    it "returns a new Response with answers for each question" do
      question = Question.create!
      response = Response.build_for(Survey.create!(title: 'Some Survey'))
      expect(response.answers.map{ |answer| question }).to eq([question])
    end
  end
end
