require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      :survey => nil,
      :question => nil,
      :answer => "MyString"
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "input#answer_survey_id[name=?]", "answer[survey_id]"

      assert_select "input#answer_question_id[name=?]", "answer[question_id]"

      assert_select "input#answer_answer[name=?]", "answer[answer]"
    end
  end
end
