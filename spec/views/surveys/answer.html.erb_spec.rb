require 'rails_helper'

RSpec.describe "surveys/answer", type: :view do
  before(:each) do
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
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
