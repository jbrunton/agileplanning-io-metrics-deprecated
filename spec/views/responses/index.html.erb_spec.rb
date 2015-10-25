require 'rails_helper'

RSpec.describe "responses/index", type: :view do
  before(:each) do
    survey = create(:survey)
    create(:question)
    responses = [create(:response, survey: survey)]
    assign(:survey, survey)
    assign(:survey_report, SurveyReport.new(survey))
  end

  it "renders a list of responses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
