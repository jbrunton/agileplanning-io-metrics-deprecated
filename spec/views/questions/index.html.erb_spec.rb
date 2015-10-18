require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
            create(:question),
            create(:question)
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => /Question \d+/, :count => 4
    assert_select "tr>td", :text => /Question \d+ description/, :count => 2
  end
end
