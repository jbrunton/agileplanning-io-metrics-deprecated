require 'rails_helper'

RSpec.describe "responses/index", type: :view do
  before(:each) do
    survey = Survey.create!(title: 'Some Survey')
    question = Question.create!(title: 'Some Question')
    assign(:questions, [question])
    assign(:survey, survey)
    assign(:responses, [
      Response.create!(
        :survey => survey
      ),
      Response.create!(
        :survey => survey
      )
    ])
  end

  it "renders a list of responses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
