require 'rails_helper'

RSpec.describe "surveys/index", type: :view do
  before(:each) do
    assign(:surveys, [
            create(:survey),
            create(:survey)
    ])
  end

  it "renders a list of surveys" do
    render
    assert_select "tr>td", :text => /Survey \d+/, :count => 2
  end
end
