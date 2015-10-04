require 'rails_helper'

RSpec.describe "surveys/answer", type: :view do
  before(:each) do
    assign(:survey, Survey.create!(title: 'Some Survey'))
    assign(:questions, [
            Question.create!(
                :title => "Title",
                :description => "Description"
            ),
            Question.create!(
                :title => "Title",
                :description => "Description"
            )
        ])
  end

  it "renders a list of question" do
    render
    assert_select "h3", :text => "Title".to_s, :count => 2
    assert_select "p", :text => "Description".to_s, :count => 2
  end
end
